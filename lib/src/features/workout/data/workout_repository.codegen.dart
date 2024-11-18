import 'package:ez_fit_app/src/features/workout/data/workout_repository_dummy.codegen.dart';
import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_repository.codegen.g.dart';

/// Abstract interface for the WorkoutRepository.
abstract class WorkoutRepository {
  Future<WorkoutModel> getWorkoutById(String workoutId);
  Future<List<WorkoutModel>> getWorkouts();
  Future<void> updateWorkout(WorkoutModel workout);
  Future<void> createWorkout(WorkoutModel workout);
  Future<void> deleteWorkout(String id);
}

/// Riverpod provider for WorkoutRepository.
@riverpod
WorkoutRepository workoutRepository(Ref ref) {
  return WorkoutRepositoryDummy();
}
