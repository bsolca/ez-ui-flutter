import 'dart:convert';
import 'dart:math';

import 'package:ez_fit_app/src/features/workout/data/workout_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:flutter/services.dart';

class WorkoutRepositoryDummy implements WorkoutRepository {
  @override
  Future<WorkoutModel?> getWorkoutById(String id) async {
    final workouts = await getWorkouts();
    return workouts.firstWhere((workout) => workout.id == id);
  }

  @override
  Future<List<WorkoutModel>> getWorkouts() async {
    await Future<void>.delayed(const Duration(seconds: 1)); // Simulated delay
    try {
      final response =
          await rootBundle.loadString('assets/dummy/workouts_dummy.json');
      final data = jsonDecode(response);
      if (data is List<dynamic>) {
        return data.map((e) {
          if (e is Map<String, dynamic>) {
            return WorkoutModel.fromJson(e);
          }
          throw Exception('Invalid workout data');
        }).toList();
      }
      throw Exception('Invalid workout data');
    } catch (e) {
      throw Exception('Failed to load workouts dummy: $e');
    }
  }

  @override
  Future<void> updateWorkout(WorkoutModel workout) async {
    _simulateRandomFailure();
  }

  @override
  Future<void> createWorkout(WorkoutModel workout) async {
    _simulateRandomFailure();
  }

  @override
  Future<void> deleteWorkout(String id) async {
    _simulateRandomFailure();
  }

  void _simulateRandomFailure() {
    final random = Random();
    if (random.nextBool()) {
      throw Exception('Simulated random failure in WorkoutRepository');
    }
  }
}
