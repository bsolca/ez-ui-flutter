import 'package:ez_fit_app/src/features/workout/workout_form.dart';
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
    // Eagerly initialize providers by watching it.
    // Note: removed, seems to work without now and no jump scrolling effect.
    //ref.watch(workoutStepsControllerProvider(workoutId));

    return EzScaffoldBody(
      child: WorkoutForm(workoutId: workoutId),
    );
  }
}
