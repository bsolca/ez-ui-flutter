import 'dart:convert';
import 'dart:math';

import 'package:ez_fit_app/src/features/exercise/data/exercise_repository.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/services.dart';

class ExerciseRepositoryDummy implements ExerciseRepository {
  ExerciseRepositoryDummy();

  @override
  Future<ExerciseModel> getExerciseById(String id) async {
    try {
      final exercises = await getExercises();
      return exercises.firstWhere(
        (exercise) => exercise.id == id,
      );
    } catch (e) {
      throw Exception('Failed to load exercise with id $id: $e');
    }
  }

  @override
  Future<List<ExerciseModel>> getExercises() async {
    await Future<void>.delayed(EzConstValue.asyncDuration);
    try {
      final response = await rootBundle.loadString(
        'assets/dummy/exercises_dummy.json',
      );
      final data = jsonDecode(response);
      if (data is List<dynamic>) {
        return data.map((e) {
          if (e is Map<String, dynamic>) {
            return ExerciseModel.fromJson(e);
          }
          throw Exception('Invalid exercise data');
        }).toList();
      }
      throw Exception('Invalid exercise data');
    } catch (e) {
      throw Exception('Failed to load exercises dummy: $e');
    }
  }

  @override
  Future<void> deleteExercise(String id) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final random = Random();

    if (random.nextBool()) {
      final messages = [
        'Exercise not found',
        'Failed due to network issues',
        'Insufficient permissions to delete',
        'Database error occurred',
        'Exercise is locked and cannot be deleted',
      ];
      throw Exception(messages[random.nextInt(messages.length)]);
    }
  }

  @override
  Future<void> updateExercise(ExerciseModel exercise) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final random = Random();

    if (random.nextBool()) {
      final messages = [
        'Exercise not found',
        'Invalid data format',
        'Update conflict detected',
        'Network error occurred',
        'Exercise is locked and cannot be updated',
      ];
      throw Exception(messages[random.nextInt(messages.length)]);
    }
  }

  @override
  Future<void> createExercise(ExerciseModel exercise) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final random = Random();
    if (random.nextBool()) {
      final messages = [
        'Name already exist',
        'Wrong image format',
        'Tags must not be empty',
        'Description must not be empty',
        'Image must be less than 5MB',
      ];
      throw Exception(messages[random.nextInt(messages.length)]);
    }
  }
}
