import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user/model/user_model.codegen.dart';
import 'package:impostor/src/features/user/user_controller.codegen.dart';
import 'package:impostor/src/utils/log/logger.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// A [SfDataGrid] that displays a list of users.
class UserSfGrid extends ConsumerWidget {
  /// A [SfDataGrid] that displays a list of users.
  const UserSfGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userControllerProvider);

    return userAsyncValue.when(
      data: (users) {
        return SfDataGrid(
          source: UserDataSource(users: users),
          columns: <GridColumn>[
            GridColumn(
              columnName: 'id',
              label: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                child: const Text(
                  'ID',
                ),
              ),
            ),
            GridColumn(
              columnName: 'firstName',
              label: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                child: const Text('First Name'),
              ),
            ),
            GridColumn(
              columnName: 'lastName',
              label: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                child: const Text('Last Name'),
              ),
            ),
            GridColumn(
              columnName: 'birthDate',
              label: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                child: const Text('Birth Date'),
              ),
            ),
            // Add more columns as needed
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, stackTrace) => Center(child: SelectableText('Error: $e')),
    );
  }
}

/// Data source class with required data for the data grid widget.
class UserDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  UserDataSource({required List<UserModel> users}) {
    _users = users.map<DataGridRow>(
      (user) {
        return DataGridRow(
          cells: [
            DataGridCell<int>(columnName: 'id', value: user.id),
            DataGridCell<String>(
              columnName: 'firstName',
              value: user.firstName,
            ),
            DataGridCell<String>(
              columnName: 'lastName',
              value: user.lastName,
            ),
            // Assuming user has a 'birthDate' field of type DateTime
            DataGridCell<String>(
              columnName: 'birthDate',
              value: _formatDate(user.birthDate), // Format the date
            ),
            // Add more cells as needed
          ],
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
          alignment: Alignment.center,
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
