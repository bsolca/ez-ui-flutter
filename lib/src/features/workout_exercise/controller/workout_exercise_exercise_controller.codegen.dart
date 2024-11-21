import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_exercise_controller.codegen.g.dart';

@riverpod
class WorkoutExerciseExerciseController
    extends _$WorkoutExerciseExerciseController {
  @override
  Future<ExerciseModel> build(String exerciseId) async {
    return ref.watch(exerciseServiceProvider).getExerciseById(exerciseId);
  }
}
