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
  Future<void> addStep(WorkoutStepModel step) async {
    state = [...state, step];
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
  Future<void> editStep(WorkoutStepModel updatedStep) async {
    throw UnimplementedError();
  }

  /// Remove a step
  void removeStep(String workoutStepId) {
    state = state.where((step) => step.id != workoutStepId).toList();
  }
}
