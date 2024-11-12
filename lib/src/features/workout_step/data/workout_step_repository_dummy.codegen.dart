import 'dart:convert';
import 'dart:math';

import 'package:ez_fit_app/src/features/workout_step/data/workout_step_repository.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/services.dart';

class WorkoutStepRepositoryDummy implements WorkoutStepRepository {
  @override
  Future<WorkoutStepModel?> getWorkoutStepById(String id) async {
    final steps = await getWorkoutSteps(id);
    return steps.firstWhere((step) => step.id == id);
  }

  @override
  Future<List<WorkoutStepModel>> getWorkoutSteps(String workoutId) async {
    await Future<void>.delayed(EzConstValue.asyncDuration); // Simulated delay
    try {
      final response =
          await rootBundle.loadString('assets/dummy/workout_steps_dummy.json');
      final data = jsonDecode(response);

      // Ensure the JSON structure contains 'steps' as a list
      if (data is Map<String, dynamic> && data['steps'] is List<dynamic>) {
        final stepsList = data['steps'] as List<dynamic>;

        // Filter steps by workoutId
        final filteredSteps = stepsList.where((e) {
          if (e is Map<String, dynamic>) {
            return e['workoutId'] == workoutId;
          }
          return false;
        }).toList();

        // Convert each filtered step to WorkoutStepModel
        return filteredSteps.map((e) {
          if (e is Map<String, dynamic>) {
            return WorkoutStepModel.fromJson(e);
          }
          throw Exception('Invalid workout step data format');
        }).toList();
      }
      throw Exception('Invalid workout steps JSON structure');
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
