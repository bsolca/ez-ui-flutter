import 'package:ez_fit_app/src/features/exercise/data/exercise_repository_dummy.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_repository.codegen.g.dart';

abstract interface class ExerciseRepository {
  Future<ExerciseModel> getExerciseById(String id);

  Future<List<ExerciseModel>> getExercises();

  Future<void> updateExercise(ExerciseModel exercise);

  Future<void> createExercise(ExerciseModel exercise);

  Future<void> deleteExercise(String id);
}

/// Exercise repository provider.
@riverpod
ExerciseRepository exerciseRepository(Ref ref) {
  return ExerciseRepositoryDummy();
}
