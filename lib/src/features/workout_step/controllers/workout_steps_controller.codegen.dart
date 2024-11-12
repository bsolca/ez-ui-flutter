import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/service/workout_step_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_steps_controller.codegen.g.dart';

@riverpod
class WorkoutStepsController extends _$WorkoutStepsController {
  @override
  Future<List<WorkoutStepModel>> build(String workoutId) async {
    // Load the initial steps for the workout based on the workoutId
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(workoutStepServiceProvider).getWorkoutSteps(workoutId);
    });

    return state.value ?? [];
  }

  /// Add a new step
  Future<void> addStep(WorkoutStepModel step) async {
    final steps = state.value ?? [];
    state = AsyncValue.data([...steps, step]);
    await ref.read(workoutStepServiceProvider).saveWorkoutStep(step);
  }

  /// Edit an existing step
  Future<void> editStep(WorkoutStepModel updatedStep) async {
    final steps = state.value ?? [];
    state = AsyncValue.data([
      for (final step in steps)
        if (step.id == updatedStep.id) updatedStep else step,
    ]);
    await ref.read(workoutStepServiceProvider).updateWorkoutStep(updatedStep);
  }

  /// Remove a step
  Future<void> removeStep(String stepId) async {
    final steps = state.value ?? [];
    state = AsyncValue.data(
      steps.where((step) => step.id != stepId).toList(),
    );
    await ref.read(workoutStepServiceProvider).deleteWorkoutStep(stepId);
  }
}
