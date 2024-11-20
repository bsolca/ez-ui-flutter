import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/service/workout_step_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_steps_controller.codegen.g.dart';

@riverpod
class WorkoutStepsController extends _$WorkoutStepsController {
  @override
  Future<List<WorkoutStepModel>> build(String workoutId) async {
    // Load the initial steps for the workout based on the workoutId
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(workoutStepServiceProvider).getWorkoutSteps(
        workoutId: workoutId,
      );
    });

    return state.value ?? [];
  }

  /// Add a new step
  Future<void> addStep(WorkoutStepModel step) async {
    final steps = state.value ?? [];
    state = AsyncValue.data([...steps, step]);
    await ref.read(workoutStepServiceProvider).saveWorkoutStep(
      step: step,
    );
  }

  /// Create a new exercise in a step
  Future<void> createNewExercise(String stepId) async {
    final formService = ref.read(
      workoutFormControllerProvider(workoutId: workoutId).notifier,
    );
    final workoutExercise = WorkoutExerciseModel.newWorkoutExercise(
      stepId: stepId,
    );
    formService.addExercise(workoutExercise);
  }

  /// Edit an existing step
  Future<void> editStep(WorkoutStepModel updatedStep) async {
    final steps = state.value ?? [];
    state = AsyncValue.data([
      for (final step in steps)
        if (step.id == updatedStep.id) updatedStep else step,
    ]);
    await ref.read(workoutStepServiceProvider).updateWorkoutStep(
          step: updatedStep,
        );
  }

  /// Remove a step
  Future<void> removeStep(String workoutStepId) async {
    await EzAsyncValue.guard(
      ref: ref,
      operation: () async {
        // Call the service to delete the step
        await ref.read(workoutStepServiceProvider).deleteWorkoutStep(
              workoutStepId: workoutStepId,
            );
      },
      onSuccess: () {
        // Update the state upon success
        final currentState = state;
        if (currentState is AsyncData<List<WorkoutStepModel>>) {
          final currentSteps = currentState.value;
          final updatedSteps = List<WorkoutStepModel>.from(currentSteps)
            ..removeWhere((workoutStep) => workoutStep.id == workoutStepId);
          state = AsyncValue.data(updatedSteps);
        }
      },
      onError: (error, stack) {
        // Optionally handle state updates on error, or leave the state unchanged
        // For example, you could log the error or update the state to an error state
        // In this case, we're leaving the state unchanged
      },
      errorToastMessage: (error) => 'Failed to delete step: $error',
    );
  }
}
