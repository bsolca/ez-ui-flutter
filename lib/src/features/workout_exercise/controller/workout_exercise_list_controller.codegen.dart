import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/service/workout_exercise_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_list_controller.codegen.g.dart';

@riverpod
class WorkoutExerciseListController extends _$WorkoutExerciseListController {
  @override
  Future<List<WorkoutExerciseModel>?> build(String stepId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async {
        final service = ref.read(workoutExerciseServiceProvider);
        return service.getWorkoutExercises(stepId);
      },
    );

    return state.value;
  }

  Future<void> deleteWorkoutExercise(String exerciseId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final service = ref.read(workoutExerciseServiceProvider);
      await service.deleteWorkoutExercise(exerciseId);

      final list = state.value;
      if (list != null) {
        list.removeWhere((e) => e.id == exerciseId);
        state = AsyncValue.data(list);
      }
      return null;
    });
  }
}
