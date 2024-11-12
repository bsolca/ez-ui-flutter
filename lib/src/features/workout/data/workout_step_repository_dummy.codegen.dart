import 'dart:convert';
import 'dart:math';

import 'package:ez_fit_app/src/features/workout/data/workout_step_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout/model/workout_step_model.codegen.dart';
import 'package:flutter/services.dart';

class WorkoutStepRepositoryDummy implements WorkoutStepRepository {
  @override
  Future<WorkoutStepModel?> getWorkoutStepById(String id) async {
    final steps = await getWorkoutSteps();
    return steps.firstWhere((step) => step.id == id);
  }

  @override
  Future<List<WorkoutStepModel>> getWorkoutSteps() async {
    await Future<void>.delayed(const Duration(seconds: 1)); // Simulated delay
    try {
      final response =
      await rootBundle.loadString('assets/dummy/workout_steps_dummy.json');
      final data = jsonDecode(response);
      if (data is List<dynamic>) {
        return data.map((e) {
          if (e is Map<String, dynamic>) {
            return WorkoutStepModel.fromJson(e);
          }
          throw Exception('Invalid workout step data');
        }).toList();
      }
      throw Exception('Invalid workout step data');
    } catch (e) {
      throw Exception('Failed to load workout steps dummy: $e');
    }
  }

  @override
  Future<void> updateWorkoutStep(WorkoutStepModel step) async {
    _simulateRandomFailure();
  }

  @override
  Future<void> createWorkoutStep(WorkoutStepModel step) async {
    _simulateRandomFailure();
  }

  @override
  Future<void> deleteWorkoutStep(String id) async {
    _simulateRandomFailure();
  }

  void _simulateRandomFailure() {
    final random = Random();
    if (random.nextBool()) {
      throw Exception('Simulated random failure in WorkoutStepRepository');
    }
  }
}
