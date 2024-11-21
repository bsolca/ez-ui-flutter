import 'package:ez_fit_app/src/features/technique/technique_form.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TechniqueScreen extends ConsumerWidget {
  const TechniqueScreen({
    super.key,
    required this.techniqueId,
  });

  final String techniqueId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EzScaffoldBody(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: TechniqueForm(
                techniqueId: techniqueId,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
