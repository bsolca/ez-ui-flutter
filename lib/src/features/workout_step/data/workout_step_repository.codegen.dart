import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/data/workout_step_repository_dummy.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_step_repository.codegen.g.dart';

/// Abstract interface for the WorkoutStepRepository.
abstract class WorkoutStepRepository {
  Future<WorkoutStepModel?> getWorkoutStepById(String id);

  Future<List<WorkoutStepModel>> getWorkoutSteps(String workoutId);

  Future<void> updateWorkoutStep(WorkoutStepModel workoutStep);

  Future<void> createWorkoutStep(WorkoutStepModel workoutStep);

  Future<void> deleteWorkoutStep(String id);
}

/// Riverpod provider for WorkoutStepRepository.
@riverpod
WorkoutStepRepository workoutStepRepository(Ref ref) {
  return WorkoutStepRepositoryDummy();
}
