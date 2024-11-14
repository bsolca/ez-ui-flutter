import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_exercise_controller.codegen.g.dart';

@riverpod
Future<ExerciseModel> workoutExerciseExerciseController(
  Ref ref,
  String exerciseId,
) async {
  return ref.watch(exerciseServiceProvider).getExerciseById(exerciseId);
}
