import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseScreen extends ConsumerWidget {
  const ExerciseScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EzScaffoldBody(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          EzHeader.displayMedium(
            id == 'new' ? 'Create new exercise' : "Exercise of id '$id'",
          ),
        ],
      ),
    );
  }
}
