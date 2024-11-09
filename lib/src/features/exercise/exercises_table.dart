import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_table_column_enum.dart';
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

/// A [SfDataGrid] that displays a list of exercises.
class ExercisesTable extends ConsumerStatefulWidget {
  /// Creates an [ExercisesTable] widget.
  const ExercisesTable({
    super.key,
    required this.exercises,
    required this.dataGridController,
    required this.searchText,
  }) : isLoading = false;

  ExercisesTable.loading({super.key})
      : isLoading = true,
        exercises = const [],
        dataGridController = DataGridController(),
        searchText = null;

  /// The list of exercises.
  final List<ExerciseModel> exercises;

  /// The controller for the data grid widget.
  final DataGridController dataGridController;

  /// Text searched by the user and is highlighted in the table.
  final String? searchText;

  final bool isLoading;

  @override
  ConsumerState<ExercisesTable> createState() => _ExercisesTableState();
}

class _ExercisesTableState extends ConsumerState<ExercisesTable> {
  final Map<String, double> columnWidths = {};

  @override
  Widget build(BuildContext context) {
    final isCompact = ref.isCompactScreen;
    final faker = Faker();
    final exerciseDataSource = _ExerciseDataSource(
      exercises: widget.isLoading
          ? List.generate(50, (index) {
              return ExerciseModel(
                id: faker.guid.guid(),
                name: faker.lorem.words(2).join(' '),
                imageUrl: faker.internet.httpsUrl(),
                videoUrl: faker.internet.httpsUrl(),
                tags: faker.lorem.words(3),
                description: faker.lorem.sentences(2).join(' '),
              );
            })
          : widget.exercises,
      isCompact: isCompact,
      searchText: widget.searchText,
    );

    return widget.exercises.isEmpty && !widget.isLoading
        ? Center(child: Text(ref.loc.noExercisesFound))
        : Skeletonizer(
            enabled: widget.isLoading,
            child: SelectionArea(
              child: SfDataGrid(
                source: exerciseDataSource,
                allowColumnsResizing: true,
                controller: widget.dataGridController,
                onSelectionChanging: (List<DataGridRow> addedRows,
                    List<DataGridRow> removedRows) {
                  return true;
                },
                onColumnResizeStart: (ColumnResizeStartDetails details) {
                  // Disable resizing for the first and last columns if needed.
                  if (details.columnIndex == 0 ||
                      details.columnIndex ==
                          ExerciseTableColumnEnum.values.length - 1) {
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
                    if (rowIndex < widget.exercises.length) {
                      final exercise = widget.exercises[rowIndex];
                      final exerciseId = exercise.id;

                      context.goNamed(
                        AppRoute.exercise.name,
                        pathParameters: {'id': exerciseId},
                      );
                    }
                  }
                },
                columns: isCompact
                    ? [
                        GridColumn(
                          columnName: ExerciseTableColumnEnum.name.name,
                          label: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                              horizontal: EzConstLayout.spacer,
                            ),
                            child: Text(ExerciseTableColumnEnum.name.name),
                          ),
                        ),
                      ]
                    : ExerciseTableColumnEnum.values.map((column) {
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
class _ExerciseDataSource extends DataGridSource {
  _ExerciseDataSource({
    required List<ExerciseModel> exercises,
    required bool isCompact,
    required this.searchText,
  }) {
    _exercises = exercises.map<DataGridRow>(
      (exercise) {
        if (isCompact) {
          // Return a single column with the exercise name.
          return DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: ExerciseTableColumnEnum.name.name,
                value: exercise.name,
              ),
            ],
          );
        } else {
          return DataGridRow(
            cells: [
              // Include the id column to retrieve the exercise ID on cell tap.
              DataGridCell<String>(
                columnName: 'id',
                value: exercise.id,
              ),
              ...ExerciseTableColumnEnum.values.map<DataGridCell>(
                (column) {
                  switch (column) {
                    case ExerciseTableColumnEnum.name:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: exercise.name,
                      );
                    case ExerciseTableColumnEnum.tags:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: exercise.tags.join(', '),
                      );
                    case ExerciseTableColumnEnum.description:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: exercise.description,
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

  List<DataGridRow> _exercises = [];

  final String? searchText;

  @override
  List<DataGridRow> get rows => _exercises;

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
