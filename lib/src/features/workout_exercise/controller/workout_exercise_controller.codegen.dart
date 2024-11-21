import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_controller.codegen.g.dart';

/// Controller specifically for handling saving or updating workout exercises.
@riverpod
class WorkoutExerciseController extends _$WorkoutExerciseController {
  @override
  WorkoutExerciseModel build({
    required String workoutId,
    required String exerciseId,
  }) {
    final formPod = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId),
    );
    final workoutExercises = formPod.value?.workoutExercises ?? [];
    final exercise = workoutExercises.firstWhere(
      (e) => e.id == exerciseId,
      orElse: () => throw Exception('Workout exercise not found'),
    );
    return exercise;
  }

  /// Delete a specific workout exercise.
  void deleteWorkoutExercise() => ref
      .read(
        workoutFormControllerProvider(workoutId: workoutId).notifier,
      )
      .removeExercise(exerciseId);
}
