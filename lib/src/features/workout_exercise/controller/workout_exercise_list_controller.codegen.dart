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
    try {
      await EzAsyncValue.guard(
        ref: ref,
        operation: () async {
          final service = ref.read(workoutExerciseServiceProvider);
          await service.deleteWorkoutExercise(exerciseId);
        },
        successToastMessage: 'Successfully deleted exercise',
        errorToastMessage: (error) => 'Failed to delete exercise: $error',
      );

      // On success, update the state by removing the exercise
      final currentState = state;
      if (currentState is AsyncData<List<WorkoutExerciseModel>>) {
        final currentList = currentState.value;
        final updatedList = List<WorkoutExerciseModel>.from(currentList)
          ..removeWhere((e) => e.id == exerciseId);
        state = AsyncValue.data(updatedList);
      }
    } catch (err, stack) {
      // If an error occurs, the state remains unchanged
      // The error toast is already displayed by EzAsyncValue.guard
    }
  }
}
