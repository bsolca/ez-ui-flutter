import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/widgets/workout_step_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutStepsList extends ConsumerWidget {
  const WorkoutStepsList({
    super.key,
    required this.workoutId,
    required this.loadingData,
  });

  final String workoutId;
  final bool loadingData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Accessing the list of workout steps from the controller
    final steps = ref.watch(workoutStepsControllerProvider(workoutId));

    return steps.when(
      data: (steps) {
        if (steps.isEmpty) return const Text("No steps available");
        return ListView.builder(
          shrinkWrap: true,
          itemCount: steps.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: index != steps.length - 1
                  ? const EdgeInsets.only(
                      bottom: EzConstLayout.spacerSmall,
                    )
                  : EdgeInsets.zero,
              child: WorkoutStepTile(
                workoutId: workoutId,
                workoutStep: steps[index],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        return SelectableText(error.toString());
      },
      loading: () {
        return const Text('Loading...');
      },
    );
  }
}
