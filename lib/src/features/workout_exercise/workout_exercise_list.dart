import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_form.dart';
import 'package:ez_fit_app/src/shared/ez_expansion_tile/ez_expansion_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

// TODO delete exercise tile, controller etc
// todo  Add a select exercise exercise
// todo think how to select the exercise info
// Todo error tile and possibility to change the exercise
class WorkoutExerciseList extends ConsumerWidget {
  const WorkoutExerciseList({
    super.key,
    required this.stepId,
  });

  final String stepId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(workoutExerciseListControllerProvider(stepId));
    final isLight = Theme.of(context).brightness == Brightness.light;
    final tileBgColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainer
        : Theme.of(context).colorScheme.surfaceContainerLow;
    final bgChildrenColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainerLow
        : Theme.of(context).colorScheme.surfaceContainer;

    return exercises.when(
      data: (exercises) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            final exercise = exercises[index];
            return Padding(
              padding: index != 0
                  ? const EdgeInsets.only(
                      top: EzConstLayout.spacerSmall,
                    )
                  : EdgeInsets.zero,
              child: ref
                  .watch(workoutExerciseExerciseControllerProvider(exercise.id))
                  .when(
                    data: (e) => EzExpansionTile(
                      tileBgColor: tileBgColor,
                      bgChildrenColor: bgChildrenColor,
                      title: Text(e.name),
                      children: [
                        WorkoutExerciseForm(
                          workoutExerciseId: exercise.id,
                        ),
                      ],
                    ),
                    error: (error, stackTrace) {
                      return EzExpansionTile.error(
                        title: Text(error.toString()),
                      );
                    },
                    loading: EzExpansionTile.loading,
                  ),
            );
          },
        );
      },
      error: (error, stackTrace) => EzExpansionTile.error(
        title: Text('Error - Loading the exercise - Deletion is possible'),
        subtitle: SelectableText(error.toString()),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            // ref
            //   .read(workoutExerciseListControllerProvider.notifier)
            //   .deleteWorkoutExercise(exercises[0].id);
          },
        )
      ),
      loading: () => const Placeholder(),
    );
  }
}
