import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/model/workout_table_column_enum.dart';
import 'package:ez_fit_app/src/shared/ez_highlighted_text/ez_highlighted_text.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:ez_fit_app/src/utils/routing/go_router_provider.codegen.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// A [SfDataGrid] that displays a list of workouts.
class WorkoutTable extends ConsumerStatefulWidget {
  /// Creates a [WorkoutTable] widget.
  const WorkoutTable({
    super.key,
    required this.workouts,
    required this.dataGridController,
    required this.searchText,
  }) : isLoading = false;

  WorkoutTable.loading({super.key})
      : isLoading = true,
        workouts = const [],
        dataGridController = DataGridController(),
        searchText = null;

  /// The list of workouts.
  final List<WorkoutModel> workouts;

  /// The controller for the data grid widget.
  final DataGridController dataGridController;

  /// Text searched by the user and is highlighted in the table.
  final String? searchText;

  final bool isLoading;

  @override
  ConsumerState<WorkoutTable> createState() => _WorkoutTableState();
}

class _WorkoutTableState extends ConsumerState<WorkoutTable> {
  final Map<String, double> columnWidths = {};

  @override
  Widget build(BuildContext context) {
    final isCompact = ref.isCompactScreen;
    final faker = Faker();
    final workoutDataSource = _WorkoutDataSource(
      workouts: widget.isLoading
          ? List.generate(50, (index) {
              return WorkoutModel(
                id: faker.guid.guid(),
                name: faker.lorem.words(2).join(' '),
                description: faker.lorem.sentences(2).join(' '),
                tags: faker.lorem.words(3),
              );
            })
          : widget.workouts,
      isCompact: isCompact,
      searchText: widget.searchText,
    );

    return widget.workouts.isEmpty && !widget.isLoading
        ? Center(child: Text(ref.loc.noWorkoutsFound))
        : Skeletonizer(
            enabled: widget.isLoading,
            child: SelectionArea(
              child: SfDataGrid(
                source: workoutDataSource,
                allowColumnsResizing: true,
                controller: widget.dataGridController,
                onSelectionChanging: (
                  List<DataGridRow> addedRows,
                  List<DataGridRow> removedRows,
                ) {
                  return true;
                },
                onColumnResizeStart: (ColumnResizeStartDetails details) {
                  // Disable resizing for the first and last columns if needed.
                  if (details.columnIndex == 0 ||
                      details.columnIndex ==
                          WorkoutTableColumnEnum.values.length - 1) {
                    return false;
                  }
                  return true;
                },
                onColumnResizeUpdate: (ColumnResizeUpdateDetails details) {
                  setState(() {
                    columnWidths[details.column.columnName] = details.width;
                  });
                  return true;
                },
                columnWidthMode: ColumnWidthMode.lastColumnFill,
                onCellTap: (DataGridCellTapDetails details) {
                  if (details.rowColumnIndex.rowIndex > 0) {
                    final rowIndex = details.rowColumnIndex.rowIndex - 1;
                    if (rowIndex < widget.workouts.length) {
                      final workout = widget.workouts[rowIndex];
                      final workoutId = workout.id;

                      context.goNamed(
                        AppRoute.workout.name,
                        pathParameters: {'id': workoutId},
                      );
                    }
                  }
                },
                columns: isCompact
                    ? [
                        GridColumn(
                          columnName: WorkoutTableColumnEnum.name.name,
                          label: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                              horizontal: EzConstLayout.spacer,
                            ),
                            child: Text(WorkoutTableColumnEnum.name.name),
                          ),
                        ),
                      ]
                    : WorkoutTableColumnEnum.values.map((column) {
                        return GridColumn(
                          columnName: column.name,
                          minimumWidth: EzConstLayout.minColumnWidth,
                          width: columnWidths[column.name] ?? double.nan,
                          label: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                              horizontal: EzConstLayout.spacer,
                            ),
                            child: Text(column.name),
                          ),
                        );
                      }).toList(),
              ),
            ),
          );
  }
}

/// Data source class with required data for the data grid widget.
class _WorkoutDataSource extends DataGridSource {
  _WorkoutDataSource({
    required List<WorkoutModel> workouts,
    required bool isCompact,
    required this.searchText,
  }) {
    _workouts = workouts.map<DataGridRow>(
      (workout) {
        if (isCompact) {
          // Return a single column with the workout name.
          return DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: WorkoutTableColumnEnum.name.name,
                value: workout.name,
              ),
            ],
          );
        } else {
          return DataGridRow(
            cells: [
              // Include the id column to retrieve the workout ID on cell tap.
              DataGridCell<String>(
                columnName: 'id',
                value: workout.id,
              ),
              ...WorkoutTableColumnEnum.values.map<DataGridCell>(
                (column) {
                  switch (column) {
                    case WorkoutTableColumnEnum.name:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: workout.name,
                      );
                    case WorkoutTableColumnEnum.tags:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: workout.tags.join(', '),
                      );
                    case WorkoutTableColumnEnum.description:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: workout.description,
                      );
                  }
                },
              ),
            ],
          );
        }
      },
    ).toList();
  }

  List<DataGridRow> _workouts = [];

  final String? searchText;

  @override
  List<DataGridRow> get rows => _workouts;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    // Skip the 'id' cell since it's used internally.
    final cells =
        row.getCells().where((cell) => cell.columnName != 'id').toList();
    return DataGridRowAdapter(
      cells: cells.map<Widget>((cell) {
        return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: EzConstLayout.spacer),
          child: EzHighlightedText(
            cell.value.toString(),
            maxLines: 3,
            highlight: searchText,
          ),
        );
      }).toList(),
    );
  }
}
