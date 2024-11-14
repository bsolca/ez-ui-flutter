import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_form.dart';
import 'package:ez_fit_app/src/shared/ez_expansion_tile/ez_expansion_tile.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseList extends ConsumerWidget {
  const WorkoutExerciseList({
    super.key,
    required this.stepId,
  });

  final String stepId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(workoutExerciseListControllerProvider(stepId));

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
              child: EzExpansionTile(
                title: Text(exercise.id),
                children: [
                  WorkoutExerciseForm(
                    workoutExerciseId: exercise.id,
                  ),
                ],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) => SelectableText(error.toString()),
      loading: () => const Placeholder(),
    );
  }
}
