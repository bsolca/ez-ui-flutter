import 'package:ez_fit_app/src/features/workout/model/workout_form_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/service/workout_service.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/service/workout_exercise_service.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/service/workout_step_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_form_controller.codegen.g.dart';

@riverpod
class WorkoutFormController extends _$WorkoutFormController {
  @override
  Future<WorkoutFormModel> build({required String workoutId}) async {
    state = const AsyncValue.loading();
    final workoutService = ref.watch(workoutServiceProvider);
    final workoutStepService = ref.watch(workoutStepServiceProvider);
    final workoutExerciseService = ref.watch(workoutExerciseServiceProvider);

    final workout = await workoutService.getWorkoutById(workoutId);
    final workoutSteps = await workoutStepService.getWorkoutSteps(
      workoutId: workoutId,
    );

    // Fetch all exercises for the workout steps
    final workoutExercises = <WorkoutExerciseModel>[];

    for (final step in workoutSteps) {
      workoutExercises.addAll(
        await workoutExerciseService.getWorkoutExercises(stepId: step.id),
      );
    }

    _initialState = WorkoutFormModel(
      workout: workout,
      workoutSteps: workoutSteps,
      workoutExercises: workoutExercises,
    );

    state = AsyncValue.data(_initialState);

    return _initialState;
  }

  late final WorkoutFormModel _initialState;

  /// Check if the current form has been modified
  bool hasBeenModified() {
    final currentState = state.value ?? _initialState;
    return currentState != _initialState;
  }

  /// Add a new step (!!! Only on local !!!).
  void addStep(WorkoutStepModel workoutStep) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutSteps: currentState.workoutSteps..add(workoutStep),
      ),
    );
  }

  /// Add a new exercise (!!! Only on local !!!).
  void addExercise(WorkoutExerciseModel workoutExercise) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: [
          ...currentState.workoutExercises,
          workoutExercise,
        ],
      ),
    );
  }

  /// Remove a step (!!! Only on local !!!).
  void removeStep(String workoutStepId) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutSteps: currentState.workoutSteps
            .where((step) => step.id != workoutStepId)
            .toList(),
      ),
    );
  }

  /// Remove an exercise (!!! Only on local !!!).
  void removeExercise(String exerciseId) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .where((exercise) => exercise.id != exerciseId)
            .toList(),
      ),
    );
  }

  /// Update a step (!!! Only on local !!!).
  void updateStep(WorkoutStepModel step) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutSteps: currentState.workoutSteps
            .map(
              (workoutStep) => workoutStep.id == step.id ? step : workoutStep,
            )
            .toList(),
      ),
    );
  }

  /// Update an exercise (!!! Only on local !!!).
  void updateExercise(WorkoutExerciseModel exercise) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map((e) => e.exerciseId == exercise.exerciseId ? exercise : e)
            .toList(),
      ),
    );
  }

  /// Save the current form to the database.
  Future<void> saveFullWorkout() async {
    final currentState = state.value ?? _initialState;
    final workoutService = ref.read(workoutServiceProvider);
    state = const AsyncValue.loading();
    await workoutService.saveWorkoutForm(currentState);
  }
}
