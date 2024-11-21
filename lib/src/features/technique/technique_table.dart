import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/model/technique_table_column_enum.dart';
import 'package:ez_fit_app/src/shared/ez_highlighted_text/ez_highlighted_text.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// A [SfDataGrid] that displays a list of techniques.
class TechniqueTable extends ConsumerStatefulWidget {
  /// Creates an [TechniqueTable] widget.
  const TechniqueTable({
    super.key,
    required this.techniques,
    required this.dataGridController,
    required this.searchText,
    required this.onCellTap,
  }) : isLoading = false;

  TechniqueTable.loading({super.key})
      : isLoading = true,
        techniques = const [],
        dataGridController = DataGridController(),
        onCellTap = null,
        searchText = null;

  final List<TechniqueModel> techniques;

  final DataGridController dataGridController;

  final String? searchText;

  final bool isLoading;

  final void Function(
    DataGridCellTapDetails details,
    List<TechniqueModel> techniques,
  )? onCellTap;

  @override
  ConsumerState<TechniqueTable> createState() => _TechniqueTableState();
}

class _TechniqueTableState extends ConsumerState<TechniqueTable> {
  final Map<String, double> columnWidths = {};

  @override
  Widget build(BuildContext context) {
    final isCompact = ref.isCompactScreen;
    final faker = Faker();
    final techniqueDataSource = _TechniqueDataSource(
      techniques: widget.isLoading
          ? List.generate(50, (index) {
              return TechniqueModel(
                id: faker.guid.guid(),
                name: faker.lorem.words(2).join(' '),
                imageUrl: faker.internet.httpsUrl(),
                videoUrl: faker.internet.httpsUrl(),
                tags: faker.lorem.words(3),
                description: faker.lorem.sentences(2).join(' '),
              );
            })
          : widget.techniques,
      isCompact: isCompact,
      searchText: widget.searchText,
    );

    return widget.techniques.isEmpty && !widget.isLoading
        ? Center(child: Text(ref.loc.noTechniquesFound))
        : Skeletonizer(
            enabled: widget.isLoading,
            child: SelectionArea(
              child: SfDataGrid(
                source: techniqueDataSource,
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
                          TechniqueTableColumnEnum.values.length - 1) {
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
                  final techniques = widget.techniques;
                  final onCellTap = widget.onCellTap;

                  if (onCellTap != null) {
                    onCellTap(details, techniques);
                  }
                },
                columns: isCompact
                    ? [
                        GridColumn(
                          columnName: TechniqueTableColumnEnum.name.name,
                          label: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                              horizontal: EzConstLayout.spacer,
                            ),
                            child: Text(TechniqueTableColumnEnum.name.name),
                          ),
                        ),
                      ]
                    : TechniqueTableColumnEnum.values.map((column) {
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
class _TechniqueDataSource extends DataGridSource {
  _TechniqueDataSource({
    required List<TechniqueModel> techniques,
    required bool isCompact,
    required this.searchText,
  }) {
    _techniques = techniques.map<DataGridRow>(
      (technique) {
        if (isCompact) {
          // Return a single column with the technique name.
          return DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: TechniqueTableColumnEnum.name.name,
                value: technique.name,
              ),
            ],
          );
        } else {
          return DataGridRow(
            cells: [
              // Include the id column to retrieve the technique ID on cell tap.
              DataGridCell<String>(
                columnName: 'id',
                value: technique.id,
              ),
              ...TechniqueTableColumnEnum.values.map<DataGridCell>(
                (column) {
                  switch (column) {
                    case TechniqueTableColumnEnum.name:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: technique.name,
                      );
                    case TechniqueTableColumnEnum.tags:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: technique.tags.join(', '),
                      );
                    case TechniqueTableColumnEnum.description:
                      return DataGridCell<String>(
                        columnName: column.name,
                        value: technique.description,
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

  List<DataGridRow> _techniques = [];

  final String? searchText;

  @override
  List<DataGridRow> get rows => _techniques;

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
