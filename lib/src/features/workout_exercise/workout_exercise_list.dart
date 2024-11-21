import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_add_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_form.dart';
import 'package:ez_fit_app/src/shared/ez_expansion_tile/ez_expansion_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseList extends ConsumerWidget {
  const WorkoutExerciseList({
    super.key,
    required this.workoutId,
    required this.stepId,
  });

  final String workoutId;
  final String stepId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(
      workoutExerciseListControllerProvider(
        workoutId: workoutId,
        stepId: stepId,
      ),
    );
    final isLight = Theme.of(context).brightness == Brightness.light;
    final tileBgColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainer
        : Theme.of(context).colorScheme.surfaceContainerLow;
    final bgChildrenColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainerLow
        : Theme.of(context).colorScheme.surfaceContainer;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: exercises.length,
      itemBuilder: (context, index) {
        final workoutExercise = exercises[index];
        final exerciseId = workoutExercise.exerciseId;

        return Padding(
          padding: index != 0
              ? const EdgeInsets.only(
                  top: EzConstLayout.spacerSmall,
                )
              : EdgeInsets.zero,
          child: ref
              .watch(
                workoutExerciseExerciseControllerProvider(exerciseId),
              )
              .when(
                data: (exerciseModel) => EzExpansionTile(
                  tileBgColor: tileBgColor,
                  bgChildrenColor: bgChildrenColor,
                  title: Text(exerciseModel.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // edit icon button
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => ref
                            .read(
                              workoutExerciseAddControllerProvider.notifier,
                            )
                            .showAddExerciseDialog(
                              workoutId: workoutId,
                              stepId: stepId,
                            ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: ref
                            .read(
                              workoutExerciseControllerProvider(
                                workoutId: workoutId,
                                exerciseId: workoutExercise.id,
                              ).notifier,
                            )
                            .deleteWorkoutExercise,
                      ),
                    ],
                  ),
                  children: [
                    WorkoutExerciseForm(
                      workoutExerciseId: workoutExercise.id,
                    ),
                  ],
                ),
                error: (error, stackTrace) {
                  return EzExpansionTile.error(
                    title: const Text('Error - Loading an exercise'),
                    subtitle: SelectableText(error.toString()),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: ref
                          .read(
                            workoutExerciseControllerProvider(
                              workoutId: workoutId,
                              exerciseId: exerciseId,
                            ).notifier,
                          )
                          .deleteWorkoutExercise,
                    ),
                  );
                },
                loading: EzExpansionTile.loading,
              ),
        );
      },
    );
  }
}
