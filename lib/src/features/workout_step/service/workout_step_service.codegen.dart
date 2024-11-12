import 'package:ez_fit_app/src/features/workout_step/data/workout_step_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_step_service.codegen.g.dart';

class WorkoutStepService {
  const WorkoutStepService({
    required WorkoutStepRepository workoutStepRepository,
  }) : _workoutStepRepository = workoutStepRepository;

  final WorkoutStepRepository _workoutStepRepository;

  Future<List<WorkoutStepModel>> getWorkoutSteps(String workoutId) async {
    return _workoutStepRepository.getWorkoutSteps(workoutId);
  }

  Future<void> saveWorkoutStep(WorkoutStepModel step) async {
    return _workoutStepRepository.createWorkoutStep(step);
  }

  Future<void> updateWorkoutStep(WorkoutStepModel step) async {
    return _workoutStepRepository.updateWorkoutStep(step);
  }

  Future<void> deleteWorkoutStep(String id) async {
    return _workoutStepRepository.deleteWorkoutStep(id);
  }
}

@riverpod
WorkoutStepService workoutStepService(Ref ref) {
  return WorkoutStepService(
    workoutStepRepository: ref.watch(workoutStepRepositoryProvider),
  );
}
