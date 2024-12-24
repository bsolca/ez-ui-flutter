import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_add_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_steps_controller.codegen.g.dart';

@riverpod
class WorkoutStepsController extends _$WorkoutStepsController {
  @override
  List<WorkoutStepModel> build(String workoutId) {
    final list = ref.watch(
      workoutFormControllerProvider(
        workoutId: workoutId,
      ).select((workoutForm) {
        return workoutForm.value?.workoutSteps ?? [];
      }),
    );

    return list;
  }

  /// Add a new step
  void addStep(WorkoutStepModel step) {
    ref.read(
      workoutFormControllerProvider(
        workoutId: workoutId,
      ).notifier,
    ).addStep(step);
  }

  /// Create a new exercise in a step
  void createNewExercise({
    required String stepId,
  }) {
    ref
        .read(
          workoutExerciseAddControllerProvider.notifier,
        )
        .showAddExerciseDialog(
          workoutId: workoutId,
          stepId: stepId,
        );
  }

  /// Edit an existing step
  void editStep(WorkoutStepModel updatedStep) {
    ref.read(
      workoutFormControllerProvider(
        workoutId: workoutId,
      ).notifier,
    ).updateStep(updatedStep);
  }

  /// Remove a step
  void removeStep(String workoutStepId) {
    ref.read(
      workoutFormControllerProvider(
        workoutId: workoutId,
      ).notifier,
    ).removeStep(workoutStepId);
  }
}
