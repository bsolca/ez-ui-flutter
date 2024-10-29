import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/sidebar/sidebar.dart';
import 'package:impostor/src/features/user/user_controller.codegen.dart';
import 'package:impostor/src/features/users_table/users_table.dart';
import 'package:impostor/src/shared/ez_button/ez_button.dart';
import 'package:impostor/src/shared/ez_header/ez_header.dart';
import 'package:impostor/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:impostor/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// Screen that displays a list of users.
class UsersScreen extends ConsumerStatefulWidget {
  /// Creates an instance of [UsersScreen].
  const UsersScreen({super.key});

  @override
  ConsumerState<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends ConsumerState<UsersScreen> {
  final dataGridController = DataGridController();
  final searchController = TextEditingController();
  Timer? _debounce;
  String _searchText = '';

  @override
  void initState() {
    super.initState();
    searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(Duration.zero, () {
      setState(() {
        _searchText = searchController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final userStream = ref.watch(userControllerProvider);

    return EzScaffoldBody(
      child: Column(
        children: [
          EzHeader.displayMedium(ref.loc.users),
          Row(
            children: [
              Expanded(
                child: EzTextFormField(
                  hintText: ref.loc.search,
                  controller: searchController,
                ),
              ),
              EzButton(
                onPressed: () => print('Add User'),
                text: ref.loc.addUser,
              ),
            ].withSpaceBetween(
              width: ConstLayout.spacer,
            ),
          ),
          Expanded(
            child: userStream.when(
              data: (users) => UsersTable(
                users: users,
                dataGridController: dataGridController,
                searchText: _searchText,
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ].withSpaceBetween(
          height: ConstLayout.spacer,
        ),
      ),
    );
  }
}
