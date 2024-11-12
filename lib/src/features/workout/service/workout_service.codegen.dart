import 'package:ez_fit_app/src/features/workout/data/workout_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_service.codegen.g.dart';

class WorkoutService {
  const WorkoutService(this._workoutRepository);

  final WorkoutRepository _workoutRepository;

  Future<List<WorkoutModel>> getWorkouts() async {
    return _workoutRepository.getWorkouts();
  }

  Future<WorkoutModel?> getWorkoutById(String id) async {
    return _workoutRepository.getWorkoutById(id);
  }

  Future<void> deleteWorkout(String id) async {
    return _workoutRepository.deleteWorkout(id);
  }

  Future<void> updateWorkout(WorkoutModel workout) async {
    return _workoutRepository.updateWorkout(workout);
  }

  Future<void> createWorkout(WorkoutModel workout) async {
    return _workoutRepository.createWorkout(workout);
  }
}

@riverpod
WorkoutService workoutService(Ref ref) {
  final workoutRepository = ref.watch(workoutRepositoryProvider);

  return WorkoutService(workoutRepository);
}
