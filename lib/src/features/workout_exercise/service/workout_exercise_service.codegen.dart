import 'package:ez_fit_app/src/features/workout_exercise/data/workout_exercise_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_service.codegen.g.dart';

class WorkoutExerciseService {
  const WorkoutExerciseService({
    required WorkoutExerciseRepository workoutExerciseRepository,
  }) : _workoutExerciseRepository = workoutExerciseRepository;

  final WorkoutExerciseRepository _workoutExerciseRepository;

  Future<List<WorkoutExerciseModel>> getWorkoutExercises({
    required String stepId,
  }) async {
    return _workoutExerciseRepository.getWorkoutExercises(stepId);
  }

  Future<WorkoutExerciseModel> getWorkoutExerciseById({
    required String workoutExerciseId,
  }) async {
    return _workoutExerciseRepository.getWorkoutExerciseById(workoutExerciseId);
  }

  Future<void> createWorkoutExercise({
    required WorkoutExerciseModel exercise,
  }) async {
    return _workoutExerciseRepository.createWorkoutExercise(exercise);
  }

  Future<void> updateWorkoutExercise({
    required WorkoutExerciseModel exercise,
  }) async {
    return _workoutExerciseRepository.updateWorkoutExercise(exercise);
  }

  Future<void> deleteWorkoutExercise({
    required String workoutExerciseId,
  }) async {
    return _workoutExerciseRepository.deleteWorkoutExercise(workoutExerciseId);
  }
}

@riverpod
WorkoutExerciseService workoutExerciseService(Ref ref) {
  return WorkoutExerciseService(
    workoutExerciseRepository: ref.watch(workoutExerciseRepositoryProvider),
  );
}
