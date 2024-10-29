import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:impostor/src/features/user/model/user_model.codegen.dart';
import 'package:impostor/src/features/users_table/model/users_table_column_enum.dart';
import 'package:impostor/src/shared/ez_highlighted_text/ez_highlighted_text.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';
import 'package:impostor/src/utils/log/logger.dart';
import 'package:impostor/src/utils/routing/go_router_provider.codegen.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// A [SfDataGrid] that displays a list of users.
class UsersTable extends ConsumerStatefulWidget {
  /// A [SfDataGrid] that displays a list of users.
  const UsersTable({
    super.key,
    required this.users,
    required this.dataGridController,
    required this.searchText,
  });

  /// The list of users.
  final List<UserModel> users;

  /// The controller for the data grid widget.
  final DataGridController dataGridController;

  /// Text searched by the user and is highlighted in the table.
  final String? searchText;

  @override
  ConsumerState<UsersTable> createState() => _UsersTableState();
}

class _UsersTableState extends ConsumerState<UsersTable> {
  final Map<String, double> columnWidths = {};

  @override
  Widget build(BuildContext context) {
    final isCompact = ref.isCompactScreen;

    return widget.users.isEmpty
        ? Center(child: Text(ref.loc.noUsersFound))
        : SelectionArea(
            child: SfDataGrid(
              source: _UserDataSource(
                users: widget.users,
                isCompact: isCompact,
                searchText: widget.searchText,
              ),
              allowColumnsResizing: true,
              controller: widget.dataGridController,
              onSelectionChanging:
                  (List<DataGridRow> addedRows, List<DataGridRow> removedRows) {
                return true;
              },
              onColumnResizeStart: (ColumnResizeStartDetails details) {
                // Disable resizing for the `id` column.
                if (details.columnIndex == 0 ||
                    details.columnIndex ==
                        UsersTableColumnEnum.values.length - 1) {
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
                final userId = details.rowColumnIndex.rowIndex - 1;
                context.goNamed(
                  AppRoute.usersUser.name,
                  pathParameters: {'id': userId.toString()},
                );
              },
              columns: isCompact
                  ? [
                      GridColumn(
                        columnName: UsersTableColumnEnum.firstName.name,
                        label: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(
                            horizontal: ConstLayout.spacer,
                          ),
                          child: Text(UsersTableColumnEnum.firstName.name),
                        ),
                      ),
                    ]
                  : UsersTableColumnEnum.values.map((name) {
                      return GridColumn(
                        columnName: name.name,
                        minimumWidth: ConstLayout.minColumnWidth,
                        width: columnWidths[name.name] ?? double.nan,
                        label: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(
                            horizontal: ConstLayout.spacer,
                          ),
                          child: Text(name.name),
                        ),
                      );
                    }).toList(),
            ),
          );
  }
}

/// Data source class with required data for the data grid widget.
class _UserDataSource extends DataGridSource {
  _UserDataSource({
    required List<UserModel> users,
    required bool isCompact,
    required this.searchText,
  }) {
    _users = users.map<DataGridRow>(
      (user) {
        if (isCompact) {
          // return a single col with firstname and lastname
          return DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: UsersTableColumnEnum.firstName.name,
                value: '${user.firstName} ${user.lastName}',
              ),
            ],
          );
        } else {
          return DataGridRow(
            cells: UsersTableColumnEnum.values.map<DataGridCell>(
              (column) {
                switch (column) {
                  case UsersTableColumnEnum.id:
                    return DataGridCell<int>(
                      columnName: column.name,
                      value: user.id,
                    );
                  case UsersTableColumnEnum.firstName:
                    return DataGridCell<String>(
                      columnName: column.name,
                      value: user.firstName,
                    );
                  case UsersTableColumnEnum.lastName:
                    return DataGridCell<String>(
                      columnName: column.name,
                      value: user.lastName,
                    );
                  case UsersTableColumnEnum.birthDate:
                    return DataGridCell<String>(
                      columnName: column.name,
                      value: _formatDate(user.birthDate),
                    );
                  case UsersTableColumnEnum.email:
                    return DataGridCell<String>(
                      columnName: column.name,
                      value: user.email,
                    );
                  case UsersTableColumnEnum.address:
                    return DataGridCell<String>(
                      columnName: column.name,
                      value: '${user.address.address}, ${user.address.city}, '
                          '${user.address.state}, ${user.address.postalCode}',
                    );
                }
              },
            ).toList(),
          );
        }
      },
    ).toList();
  }

  List<DataGridRow> _users = [];

  final String? searchText;

  @override
  List<DataGridRow> get rows => _users;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((cell) {
        if (cell.columnName == UsersTableColumnEnum.id.name) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: ConstLayout.spacer),
            child: Text(
              cell.value.toString(),
              style: const TextStyle(color: Colors.red),
            ),
          );
        }
        return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: ConstLayout.spacer),
          child: EzHighlightedText(
            cell.value.toString(),
            maxLines: 3,
            highlight: searchText,
          ),
        );
      }).toList(),
    );
  }

  String _formatDate(String? date) {
    if (date == null) {
      return 'N/A';
    }

    try {
      final dateParts = date.split('-');
      if (dateParts.length != 3) {
        throw const FormatException('Invalid date format');
      }

      final year = dateParts[0].padLeft(4, '0');
      final month = dateParts[1].padLeft(2, '0');
      final day = dateParts[2].padLeft(2, '0');
      final normalizedDate = '$year-$month-$day';

      final parsedDate = DateTime.parse(normalizedDate);
      return DateFormat('d MMMM yyyy').format(parsedDate);
    } catch (e) {
      logError('Error parsing date - $e');
      return 'Invalid date';
    }
  }
}
