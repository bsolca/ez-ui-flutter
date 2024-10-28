import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user/user_controller.codegen.dart';
import 'package:impostor/src/features/users_table/users_table.dart';
import 'package:impostor/src/shared/ez_header/ez_header.dart';
import 'package:impostor/src/shared/ez_scaffold_body/ez_scaffold_body.dart';

/// Screen that displays a list of users.
class UsersScreen extends ConsumerWidget {
  /// Creates an instance of [UsersScreen].
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userStream = ref.watch(userControllerProvider);

    return EzScaffoldBody(
      child: Column(
        children: [
          const EzHeader.displayMedium('Users'),
          Expanded(
            child: userStream.when(
              data: (users) => UsersTable(users: users),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}