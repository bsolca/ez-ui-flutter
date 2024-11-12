import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutScreen extends ConsumerWidget {
  const WorkoutScreen({
    super.key,
    required this.workoutId,
  });

  final String workoutId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EzScaffoldBody(
      child: Column(
        children: [
          EzHeader.displayMedium(
            workoutId == 'new'
                ? 'Create new workout'
                : "Workout of id '$workoutId'",
          ),
        ],
      ),
    );
  }
}
