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
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (steps.isEmpty) ...[
              const Text("No steps available"),
            ] else ...[
              ListView.builder(
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
                      step: steps[index],
                    ),
                  );
                },
              ),
            ],
            ElevatedButton(
              onPressed: () {
                // Example of adding a new step
                ref
                    .read(workoutStepsControllerProvider(workoutId).notifier)
                    .addStep(
                      WorkoutStepModel(
                        id: 'new-step-${steps.length + 1}',
                        name: 'New Step ${steps.length + 1}',
                        description: 'Description for new step',
                        setCount: 1,
                        restTime: null,
                        workoutId: workoutId,
                      ),
                    );
              },
              child: const Text("Add Step"),
            ),
          ],
        );
      },
      error: (error, stackTrace) {
        return Text('Error: $error');
      },
      loading: () {
        return Text('Loading...');
      },
    );
  }
}
