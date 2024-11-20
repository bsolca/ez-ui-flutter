import 'dart:convert';
import 'dart:math';
import 'package:ez_fit_app/src/features/workout_exercise/data/workout_exercise_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/services.dart';

class WorkoutExerciseRepositoryDummy implements WorkoutExerciseRepository {
  @override
  Future<List<WorkoutExerciseModel>> getWorkoutExercises(String stepId) async {
    await Future<void>.delayed(EzConstValue.asyncDuration); // Simulated delay
    try {
      final response = await rootBundle
          .loadString('assets/dummy/workout_exercises_dummy.json');
      final data = jsonDecode(response);

      if (data is List<dynamic>) {
        // Filter exercises by stepId
        final filteredExercises = data.where((e) {
          if (e is Map<String, dynamic>) {
            return e['stepId'] == stepId;
          }
          return false;
        });

        // Convert each filtered exercise to WorkoutExerciseModel
        return filteredExercises.map((e) {
          if (e is Map<String, dynamic>) {
            try {
              return WorkoutExerciseModel.fromJson(e);
            } catch (e) {
              throw Exception('Failed to parse workout exercise data: $e');
            }
          }
          throw Exception('Invalid workout exercise data format');
        }).toList();
      }
      throw Exception(
        'Invalid workout exercise data structure '
        'Expected List<dynamic>, but got ${data.runtimeType}',
      );
    } catch (e) {
      throw Exception('Failed to load workout exercises dummy: $e');
    }
  }

  @override
  Future<WorkoutExerciseModel> getWorkoutExerciseById(
    String workoutExerciseId,
  ) async {
    final exercises = await getWorkoutExercises(workoutExerciseId);
    return exercises.firstWhere((workoutExercise) {
      return workoutExercise.id == workoutExerciseId;
    });
  }

  @override
  Future<void> updateWorkoutExercise(WorkoutExerciseModel exercise) async {
    _simulateRandomFailure();
  }

  @override
  Future<void> createWorkoutExercise(WorkoutExerciseModel exercise) async {
    _simulateRandomFailure();
  }

  @override
  Future<void> deleteWorkoutExercise(String id) async {
    _simulateRandomFailure();
  }

  void _simulateRandomFailure() {
    final random = Random();
    if (random.nextBool()) {
      throw Exception('Simulated random failure in WorkoutExerciseRepository');
    }
  }
}
