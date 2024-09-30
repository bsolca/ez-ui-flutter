import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:impostor/src/utils/extension/type_extension.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';
import 'package:impostor/src/utils/routing/go_router_provider.codegen.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends ConsumerWidget {
  /// Simple not found screen used for 404 errors (page not found on web)
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.loc.notFound),
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
