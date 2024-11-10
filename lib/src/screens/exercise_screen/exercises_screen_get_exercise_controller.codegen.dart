import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercises_screen_get_exercise_controller.codegen.g.dart';

@riverpod
Future<ExerciseModel?> Function()? exercisesScreenGetExerciseController(
  Ref ref,
  String? id,
) {
  final service = ref.watch(exerciseServiceProvider);

  if (id == null || id.isEmpty || id == 'new') {
    return null;
  }

  return () => service.getExerciseById(id);
}
