import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/widgets/workout_step_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutStepsList extends ConsumerWidget {
  const WorkoutStepsList({
    super.key,
    required this.workoutId,
  });

  final String workoutId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steps = ref.watch(
      workoutStepsControllerProvider(workoutId),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        steps.length,
        (index) {
          final step = steps[index];
          return Padding(
            padding: index != steps.length - 1
                ? const EdgeInsets.only(bottom: EzConstLayout.spacerSmall)
                : EdgeInsets.zero,
            child: WorkoutStepTile(
              key: ValueKey(step.id),
              workoutId: workoutId,
              workoutStepId: step.id,
            ),
          );
        },
      ),
    );
  }
}
