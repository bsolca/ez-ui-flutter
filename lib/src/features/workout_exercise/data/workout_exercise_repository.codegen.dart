import 'package:ez_fit_app/src/features/workout_exercise/data/workout_exercise_repository_dummy.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_repository.codegen.g.dart';

/// Abstract interface for the WorkoutExerciseRepository.
abstract class WorkoutExerciseRepository {
  Future<WorkoutExerciseModel?> getWorkoutExerciseById(String id);

  Future<List<WorkoutExerciseModel>> getWorkoutExercises(String stepId);

  Future<void> updateWorkoutExercise(WorkoutExerciseModel workoutExercise);

  Future<void> createWorkoutExercise(WorkoutExerciseModel workoutExercise);

  Future<void> deleteWorkoutExercise(String id);
}

/// Riverpod provider for WorkoutExerciseRepository.
@riverpod
WorkoutExerciseRepository workoutExerciseRepository(Ref ref) {
  return WorkoutExerciseRepositoryDummy();
}
