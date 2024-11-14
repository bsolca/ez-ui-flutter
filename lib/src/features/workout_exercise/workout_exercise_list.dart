import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
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
            return ListTile(
              title: Text(exercise.id),
            );
          },
        );
      },
      error: (error, stackTrace) => SelectableText(error.toString()),
      loading: () => const Placeholder(),
    );
  }
}
