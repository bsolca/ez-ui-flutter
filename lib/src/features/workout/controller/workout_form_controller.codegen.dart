import 'package:ez_fit_app/src/features/workout/model/workout_form_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/service/workout_service.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/service/workout_exercise_service.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/service/workout_step_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_form_controller.codegen.g.dart';

@riverpod
class WorkoutFormController extends _$WorkoutFormController {
  @override
  Future<WorkoutFormModel> build(String workoutId) async {
    state = const AsyncValue.loading();
    final workoutService = ref.watch(workoutServiceProvider);
    final workoutStepService = ref.watch(workoutStepServiceProvider);
    final workoutExerciseService = ref.watch(workoutExerciseServiceProvider);

    final workout = await workoutService.getWorkoutById(workoutId);
    final workoutSteps = await workoutStepService.getWorkoutSteps(workoutId);
    final workoutExercises =
        await workoutExerciseService.getWorkoutExercises(workoutId);

    _initialState = WorkoutFormModel(
      workout: workout,
      workoutSteps: workoutSteps,
      workoutExercises: workoutExercises,
    );

    state = AsyncValue.data(_initialState);

    return _initialState;
  }

  late final WorkoutFormModel _initialState;

  /// Vote against a player.
  Future<void> doSomething({required String placeholder}) async {
    // Do something
  }
}
