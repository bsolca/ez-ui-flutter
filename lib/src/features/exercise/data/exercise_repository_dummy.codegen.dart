import 'dart:convert';

import 'package:ez_fit_app/src/features/exercise/data/exercise_repository.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:flutter/services.dart';

class ExerciseRepositoryDummy implements ExerciseRepository {
  ExerciseRepositoryDummy();

  @override
  Future<ExerciseModel?> getExerciseById(String id) async {
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
    try {
      final response = await rootBundle.loadString(
        'assets/dummies/exercises_dummy.json',
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
}
