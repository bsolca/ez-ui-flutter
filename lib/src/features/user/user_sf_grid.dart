import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:impostor/src/features/user/model/user_model.codegen.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/log/logger.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// A [SfDataGrid] that displays a list of users.
class UserSfGrid extends StatefulWidget {
  /// A [SfDataGrid] that displays a list of users.
  const UserSfGrid({
    super.key,
    required this.users,
  });

  /// The list of users.
  final List<UserModel> users;

  @override
  State<UserSfGrid> createState() => _UserSfGridState();
}

class _UserSfGridState extends State<UserSfGrid> {
  final Map<String, double> columnWidths = {};

  @override
  Widget build(BuildContext context) {
    return widget.users.isEmpty
        ? const Center(child: Text('No users found.'))
        : SfDataGrid(
            source: _UserDataSource(users: widget.users),
            allowColumnsResizing: true,
            onColumnResizeStart: (ColumnResizeStartDetails details) {
              // Disable resizing for the `id` column.
              if (details.columnIndex == 0 ||
                  details.columnIndex ==
                      _UserSfGridColumnNamesEnum.values.length - 1) {
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
            columns: _UserSfGridColumnNamesEnum.values.map((name) {
              return GridColumn(
                columnName: name.name,
                minimumWidth: ConstLayout.minColumnWidth,
                width: columnWidths[name.name] ?? double.nan,
                label: Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: Text(name.name),
                ),
              );
            }).toList(),
          );
  }
}

/// Data source class with required data for the data grid widget.
class _UserDataSource extends DataGridSource {
  _UserDataSource({required List<UserModel> users}) {
    _users = users.map<DataGridRow>(
      (user) {
        return DataGridRow(
          cells: _UserSfGridColumnNamesEnum.values.map<DataGridCell>(
            (column) {
              switch (column) {
                case _UserSfGridColumnNamesEnum.id:
                  return DataGridCell<int>(
                    columnName: column.name,
                    value: user.id,
                  );
                case _UserSfGridColumnNamesEnum.firstName:
                  return DataGridCell<String>(
                    columnName: column.name,
                    value: user.firstName,
                  );
                case _UserSfGridColumnNamesEnum.lastName:
                  return DataGridCell<String>(
                    columnName: column.name,
                    value: user.lastName,
                  );
                case _UserSfGridColumnNamesEnum.birthDate:
                  return DataGridCell<String>(
                    columnName: column.name,
                    value: _formatDate(user.birthDate),
                  );
              }
            },
          ).toList(),
        );
      },
    ).toList();
  }

  List<DataGridRow> _users = [];

  @override
  List<DataGridRow> get rows => _users;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((cell) {
        return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(8),
          child: Text(cell.value.toString()),
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

/// A list of column names for the data grid widget.
enum _UserSfGridColumnNamesEnum {
  id,
  firstName,
  lastName,
  birthDate,
}
