import 'dart:convert';
import 'dart:math';

import 'package:ez_fit_app/src/features/workout/data/workout_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/services.dart';

class WorkoutRepositoryDummy implements WorkoutRepository {
  @override
  Future<WorkoutModel> getWorkoutById(String workoutId) async {
    final workouts = await getWorkouts();
    return workouts.firstWhere((workout) => workout.workoutId == workoutId);
  }

  @override
  Future<List<WorkoutModel>> getWorkouts() async {
    await Future<void>.delayed(EzConstValue.asyncDuration);
    try {
      final response =
          await rootBundle.loadString('assets/dummy/workouts_dummy.json');
      final data = jsonDecode(response);
      if (data is List<dynamic>) {
        return data.map((e) {
          if (e is Map<String, dynamic>) {
            return WorkoutModel.fromJson(e);
          }
          throw Exception('Invalid workout data (not Map<String, dynamic>)');
        }).toList();
      }
      throw Exception('Invalid workout data it is not a list');
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
