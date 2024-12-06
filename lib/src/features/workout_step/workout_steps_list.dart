import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
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
    // Accessing the list of workout steps from the controller
    final stepsLength = ref.watch(
      workoutStepsControllerProvider(workoutId).select(
        (value) => value.length,
      ),
    );

    if (stepsLength == 0) return const Text('No steps available');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        stepsLength,
            (index) {
          final workoutStep = ref.watch(
            workoutStepsControllerProvider(workoutId).select(
                  (value) {
                if (value.length <= index) return WorkoutStepModel.empty();
                return value[index];
              },
            ),
          );
          return Padding(
            padding: index != stepsLength - 1
                ? const EdgeInsets.only(
              bottom: EzConstLayout.spacerSmall,
            )
                : EdgeInsets.zero,
            child: WorkoutStepTile(
              key: ValueKey(workoutStep.id),
              workoutId: workoutId,
              workoutStep: workoutStep,
            ),
          );
        },
      ),
    );
  }
}
