import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:impostor/src/utils/extension/type_extension.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';
import 'package:impostor/src/utils/routing/go_router_provider.codegen.dart';

/// Unauthorized screen when a player can not join the game.
class UnauthorizedScreen extends ConsumerWidget {
  /// Creates an [UnauthorizedScreen].
  const UnauthorizedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(ref.loc.already_started),
            ElevatedButton(
              onPressed: () => context.goNamed(AppRoute.home.name),
              child: Text('Home'.hardcoded),
            ),
          ],
        ),
      ),
    );
  }
}
