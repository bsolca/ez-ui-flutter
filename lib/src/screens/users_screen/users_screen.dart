import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user/user_controller.codegen.dart';
import 'package:impostor/src/features/user/user_sf_grid.dart';
import 'package:impostor/src/shared/ez_header/ez_header.dart';
import 'package:impostor/src/shared/ez_scaffold_body/ez_scaffold_body.dart';

/// Screen that displays a list of users.
class UsersScreen extends ConsumerWidget {
  /// Creates an instance of [UsersScreen].
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userControllerProvider);

    return EzScaffoldBody(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const EzHeader.displayMedium('Users'),
          UserSfGrid(userAsyncValue: userAsyncValue),
        ],
      ),
    );
  }
}
