import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/service/workout_exercise_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_list_controller.codegen.g.dart';

@riverpod
class WorkoutExerciseListController extends _$WorkoutExerciseListController {
  @override
  Future<List<WorkoutExerciseModel>?> build({
    required String workoutId,
    required String stepId,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async {
        // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
        print('TESTY: pod before');
        final pod = ref.read(
          workoutFormControllerProvider(workoutId: workoutId),
        );
        // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
        print('TESTY: pod adfter');
        final value = pod.value;
        final workoutExercises = value?.workoutExercises;
        // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
        print('TESTY: EXERCISES: ${workoutExercises?.length}');
        final filteredWorkoutExercises = workoutExercises
            ?.where(
              (e) => e.stepId == stepId,
            )
            .toList();

        return filteredWorkoutExercises;
      },
    );

    // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
    print('TESTY: length: ${state.value?.length}');

    return state.value;
  }

  void deleteWorkoutExercise(String exerciseId) {
    state = AsyncValue.data(
      state.value?.where((e) => e.exerciseId != exerciseId).toList(),
    );
  }
}
