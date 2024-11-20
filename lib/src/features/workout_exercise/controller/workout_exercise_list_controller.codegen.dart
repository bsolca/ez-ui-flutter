import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/service/workout_exercise_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
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
    await EzAsyncValue.guard(
      ref: ref,
      errorToastMessage: (error) => 'Failed to delete exercise: $error',
      operation: () async => ref
          .read(workoutExerciseServiceProvider)
          .deleteWorkoutExercise(exerciseId),
      onSuccess: () {
        // Update the state upon success
        state = AsyncValue.data(
          state.value?.where((e) => e.exerciseId != exerciseId).toList(),
        );
      },
      onError: (error, stack) {
        // Dp nothing
      },
    );
  }
}
