import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_step_controller.codegen.g.dart';

@riverpod
class WorkoutStepController extends _$WorkoutStepController {
  @override
  WorkoutStepModel build({
    required String workoutId,
    required String workoutStepId,
  }) {
    return ref.watch(
      workoutStepsControllerProvider(workoutId).select(
        (steps) => steps.firstWhere(
          (step) => step.id == workoutStepId,
          orElse: WorkoutStepModel.empty,
        ),
      ),
    );
  }

  /// Save the step to the form.
  void saveStep(WorkoutStepModel step) {
    ref
        .read(
          workoutStepsControllerProvider(
            step.workoutId,
          ).notifier,
        )
        .editStep(step);
  }
}
