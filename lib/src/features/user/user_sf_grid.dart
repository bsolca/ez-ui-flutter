import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user/model/user_model.codegen.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/log/logger.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// A [SfDataGrid] that displays a list of users.
class UserSfGrid extends ConsumerStatefulWidget {
  /// A [SfDataGrid] that displays a list of users.
  const UserSfGrid({
    super.key,
    required this.userAsyncValue,
  });

  /// The async value of the users.
  final AsyncValue<List<UserModel>> userAsyncValue;

  @override
  ConsumerState<UserSfGrid> createState() => _UserSfGridState();
}

class _UserSfGridState extends ConsumerState<UserSfGrid> {
  final Map<String, double> columnWidths = {};

  @override
  Widget build(BuildContext context) {
    return widget.userAsyncValue.when(
      data: (users) {
        return SfDataGrid(
          source: _UserDataSource(users: users),
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
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, stackTrace) => Center(child: SelectableText('Error: $e')),
    );
  }
}

/// Data source class with required data for the data grid widget.
class _UserDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
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

// Helper method to format the date
  String _formatDate(String? date) {
    if (date == null) {
      return 'N/A';
    }

    try {
      // Normalize the date to ensure it follows the yyyy-MM-dd format
      final dateParts = date.split('-');
      if (dateParts.length != 3) {
        throw const FormatException('Invalid date format');
      }

      final year = dateParts[0].padLeft(4, '0');
      final month = dateParts[1].padLeft(2, '0');
      final day = dateParts[2].padLeft(2, '0');
      final normalizedDate = '$year-$month-$day';

      // Parse the normalized date
      final parsedDate = DateTime.parse(normalizedDate);

      // Format the date using the intl package
      final formattedDate = DateFormat('d MMMM yyyy').format(parsedDate);

      return formattedDate;
    } catch (e) {
      logError('Error parsing date - $e');
      return 'Invalid date';
    }
  }
}

/// A list of column for the data grid widget.
enum _UserSfGridColumnNamesEnum {
  /// The id column.
  id,

  /// The first name column.
  firstName,

  /// The last name column.
  lastName,

  /// The birth date column.
  birthDate,
}