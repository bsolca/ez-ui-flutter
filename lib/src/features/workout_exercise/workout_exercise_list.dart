import 'package:ez_fit_app/src/features/exercise/exercise_list.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_form.dart';
import 'package:ez_fit_app/src/shared/ez_expansion_tile/ez_expansion_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

// TODO delete exercise tile, controller etc
// todo  Add a select exercise exercise
// todo think how to select the exercise info
// Todo error tile and possibility to change the exercise
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

    return exercises.when(
      data: (exercises) {
        if (exercises == null) {
          // todo add Add button
          return const SizedBox.shrink();
        }
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
                    data: (e) => EzExpansionTile(
                      tileBgColor: tileBgColor,
                      bgChildrenColor: bgChildrenColor,
                      title: Text(e.name),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // edit icon button
                          IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                SmartDialog.show<void>(
                                  animationType: SmartAnimationType.fade,
                                  animationTime: EzConstValue.animationDuration,
                                  builder: (context) {
                                    return Container(
                                      margin: const EdgeInsets.all(50),
                                      constraints: const BoxConstraints(
                                        maxWidth: EzConstLayout.maxWidthCompact,
                                      ),
                                      decoration: ShapeDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surfaceContainer,
                                        shape: EzConstLayout.getShapeBorder(),
                                      ),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ExerciseList(
                                          onCellTap: (details, exercises) {
                                            if (details
                                                    .rowColumnIndex.rowIndex >
                                                0) {
                                              final rowIndex = details
                                                      .rowColumnIndex.rowIndex -
                                                  1;
                                              if (rowIndex < exercises.length) {
                                                final exercise =
                                                    exercises[rowIndex];
                                                ref
                                                    .read(
                                                      workoutExerciseExerciseControllerProvider(
                                                        exerciseId,
                                                      ).notifier,
                                                    )
                                                    .changeName(
                                                      name: exercise.name,
                                                    );
                                                // todo add form controller
                                                SmartDialog.dismiss<void>();
                                              }
                                            }
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              ref
                                  .read(
                                    workoutExerciseListControllerProvider(
                                      workoutId: workoutId,
                                      stepId: stepId,
                                    ).notifier,
                                  )
                                  .deleteWorkoutExercise(
                                    workoutExercise.exerciseId,
                                  );
                            },
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
                          onPressed: () {
                            ref
                                .read(
                                  workoutExerciseListControllerProvider(
                                    workoutId: workoutId,
                                    stepId: stepId,
                                  ).notifier,
                                )
                                .deleteWorkoutExercise(
                                  workoutExercise.exerciseId,
                                );
                          },
                        ),
                      );
                    },
                    loading: EzExpansionTile.loading,
                  ),
            );
          },
        );
      },
      error: (error, stackTrace) => EzExpansionTile.error(
        title: Text('Error - Loading stepId: $stepId'),
        subtitle: SelectableText(error.toString()),
      ),
      loading: () => const Placeholder(),
    );
  }
}
