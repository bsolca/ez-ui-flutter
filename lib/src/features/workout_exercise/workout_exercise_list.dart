import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_add_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_technique_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_form.dart';
import 'package:ez_fit_app/src/shared/ez_expansion_tile/ez_expansion_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
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
    final isLight = Theme
        .of(context)
        .brightness == Brightness.light;
    final tileBgColor = isLight
        ? Theme
        .of(context)
        .colorScheme
        .surfaceContainer
        : Theme
        .of(context)
        .colorScheme
        .surfaceContainerLow;
    final bgChildrenColor = isLight
        ? Theme
        .of(context)
        .colorScheme
        .surfaceContainerLow
        : Theme
        .of(context)
        .colorScheme
        .surfaceContainer;

    return exercises.when(
      data: (exercises) {
        // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
        print('TESTY: WorkoutExerciseList.build');
        if (exercises.isEmpty) {
          return Container(
            padding: const EdgeInsets.all(EzConstLayout.spacer),
            margin: const EdgeInsets.all(EzConstLayout.spacerSmall),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: EzConstLayout.getBorderRadius(),
            ),
            width: double.infinity,
            child: Text(ref.loc.workoutExerciseEmptyList),
          );
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            final workoutExercise = exercises[index];
            final exerciseId = workoutExercise.id;

            return Padding(
              padding: index != 0
                  ? const EdgeInsets.only(
                top: EzConstLayout.spacerSmall,
              )
                  : EdgeInsets.zero,
              child: ref
                  .watch(
                workoutExerciseTechniqueControllerProvider(
                  techniqueId: workoutExercise.techniqueId,
                ),
              )
                  .when(
                data: (exerciseModel) =>
                    EzExpansionTile(
                      tileBgColor: tileBgColor,
                      bgChildrenColor: bgChildrenColor,
                      title: Text(exerciseModel.name),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // edit icon button
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () =>
                                ref
                                    .read(
                                  workoutExerciseAddControllerProvider.notifier,
                                )
                                    .editExercise(
                                  workoutId: workoutId,
                                  exercise: workoutExercise,
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
                          key: ValueKey(workoutId + exerciseId),
                          workoutId: workoutId,
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
      },
      error: (error, stackTrace) {
        return Center(
          child: SelectableText(error.toString()),
        );
      },
      loading: () =>
      const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
