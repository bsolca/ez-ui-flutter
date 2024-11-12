import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
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
            if (loadingData) ...[
              const CircularProgressIndicator(),
            ] else if (steps.isEmpty) ...[
              const Text("No steps available"),
            ] else ...[
              ListView.builder(
                shrinkWrap: true,
                itemCount: steps.length,
                itemBuilder: (context, index) {
                  final step = steps[index];
                  return ListTile(
                    title: Text(step.name),
                    subtitle: Text(step.description ?? ''),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            // Add edit functionality, e.g., open a dialog to edit the step
                            ref
                                .read(
                                  workoutStepsControllerProvider(workoutId)
                                      .notifier,
                                )
                                .editStep(
                                  step.copyWith(
                                    name: 'Updated Name',
                                  ), // Example update
                                );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            ref
                                .read(
                                  workoutStepsControllerProvider(workoutId)
                                      .notifier,
                                )
                                .removeStep(step.id);
                          },
                        ),
                      ],
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
