import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_add_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_technique_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_form.dart';
import 'package:ez_fit_app/src/shared/ez_expansion_tile/ez_expansion_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseListItem extends ConsumerWidget {
  const WorkoutExerciseListItem({
    super.key,
    required this.index,
    required this.workoutId,
    required this.stepId,
    required this.tileBgColor,
    required this.bgChildrenColor,
  });

  final int index;
  final String workoutId;
  final String stepId;
  final Color tileBgColor;
  final Color bgChildrenColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workoutExerciseTechniqueId = ref.watch(
      workoutExerciseListControllerProvider(
        workoutId: workoutId,
        stepId: stepId,
      ).select((value) {
        if (value.length <= index) return '';
        return value[index].techniqueId;
      }),
    );

    final workoutExerciseId = ref.watch(
      workoutExerciseListControllerProvider(
        workoutId: workoutId,
        stepId: stepId,
      ).select((value) {
        if (value.length <= index) return '';
        return value[index].id;
      }),
    );

    return Padding(
      padding: index != 0
          ? const EdgeInsets.only(
              top: EzConstLayout.spacerSmall,
            )
          : EdgeInsets.zero,
      child: ref
          .watch(
            workoutExerciseTechniqueControllerProvider(
              techniqueId: workoutExerciseTechniqueId,
            ),
          )
          .when(
            data: (techniqueModel) => EzExpansionTile(
              tileBgColor: tileBgColor,
              bgChildrenColor: bgChildrenColor,
              title: Text(techniqueModel.name),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // edit icon button
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      ref
                        .read(
                          workoutExerciseAddControllerProvider.notifier,
                        )
                        .editExercise(
                          workoutId: workoutId,
                          stepId: stepId,
                          exerciseId: workoutExerciseId,
                        );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: ref
                        .read(
                          workoutExerciseControllerProvider(
                            workoutId: workoutId,
                            exerciseId: workoutExerciseId,
                          ).notifier,
                        )
                        .deleteWorkoutExercise,
                  ),
                ],
              ),
              children: [
                WorkoutExerciseForm(
                  workoutId: workoutId,
                  workoutExerciseId: workoutExerciseId,
                ),
              ],
            ),
            error: (error, stackTrace) {
              return EzExpansionTile.error(
                title: const Text('Error - Loading an technique'),
                subtitle: SelectableText(error.toString()),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: ref
                      .read(
                        workoutExerciseControllerProvider(
                          workoutId: workoutId,
                          exerciseId: workoutExerciseId,
                        ).notifier,
                      )
                      .deleteWorkoutExercise,
                ),
              );
            },
            loading: EzExpansionTile.loading,
          ),
    );
  }
}
