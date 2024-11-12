import 'dart:convert';
import 'dart:math';
import 'package:ez_fit_app/src/features/workout/data/workout_exercise_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout/model/workout_exercise_model.codegen.dart';
import 'package:flutter/services.dart';

class WorkoutExerciseRepositoryDummy implements WorkoutExerciseRepository {
  @override
  Future<List<WorkoutExerciseModel>> getWorkoutExercises() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    try {
      final response = await rootBundle.loadString(
        'assets/dummy/workout_exercises_dummy.json',
      );
      final data = jsonDecode(response);
      if (data is List<dynamic>) {
        return data.map((e) {
          if (e is Map<String, dynamic>) {
            return WorkoutExerciseModel.fromJson(e);
          }
          throw Exception('Invalid workout exercise data');
        }).toList();
      }
      throw Exception('Invalid workout exercise data');
    } catch (e) {
      throw Exception('Failed to load workout exercises dummy: $e');
    }
  }

  @override
  Future<WorkoutExerciseModel?> getWorkoutExerciseById(String id) async {
    final exercises = await getWorkoutExercises();
    return exercises.firstWhere((exercise) => exercise.id == id);
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
