import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';

/// Home screen for "/" route.
class HomeScreen extends ConsumerWidget {
  /// Home screen for "/" route.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCompact = ref.isCompactScreen;

    return EzScaffoldBody(
      child: Text('0'),
    );
  }
}
