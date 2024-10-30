import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:impostor/src/utils/env/env_config.codegen.dart';

/// Home screen for "/" route.
class HomeScreen extends ConsumerWidget {
  /// Home screen for "/" route.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final env = ref.watch(envConfigProvider);
    return EzScaffoldBody(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Todo Home screen'),
            Text('Supabase URL: ${env['supabaseUrl']}'),
            Text('Supabase Anon Key: ${env['supabaseAnonKey']}'),
          ],
        ),
      ),
    );
  }
}
