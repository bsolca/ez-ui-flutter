import 'package:ez_fit_app/src/features/_core/_models/distance_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/duration_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/intensity_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/load_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/reps_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/tempo_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/weight_unit_model.codegen.dart';
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

  /// Save the current form to the database.
  Future<void> saveFullWorkout() async {
    final currentState = state.value ?? _initialState;
    final workoutService = ref.read(workoutServiceProvider);
    state = const AsyncValue.loading();
    await workoutService.saveWorkoutForm(currentState);
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
            .map((e) => e.id == exercise.id ? exercise : e)
            .toList(),
      ),
    );
  }

  void updateReps(String workoutExerciseId, int repNumber) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      reps: RepsModel(
                        count: repNumber,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateDuration(String workoutExerciseId, int seconds) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      duration: DurationModel(
                        seconds: seconds,
                        hours: exercise.duration?.hours ?? 0,
                        minutes: exercise.duration?.minutes ?? 0,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateName(String name) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workout: currentState.workout.copyWith(name: name),
      ),
    );
  }

  void updateDescription(String description) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workout: currentState.workout.copyWith(description: description),
      ),
    );
  }

  void updateTags(String tags) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workout: currentState.workout.copyWith(tags: tags.split(',')),
      ),
    );
  }

  void updateLoadAmount(String workoutExerciseId, String value) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      load: LoadModel(
                        amount: double.parse(value),
                        unit: exercise.load?.unit ?? WeightUnit.kg,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateLoadUnit(String workoutExerciseId, String value) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      load: LoadModel(
                        amount: exercise.load?.amount ?? 0,
                        unit: WeightUnit.values.firstWhere(
                          (element) => element.name == value,
                        ),
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateRestTime(String workoutExerciseId, int restTime) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      restTimeBetweenExercise: DurationModel(
                        seconds: restTime,
                        minutes: 0,
                        hours: 0,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateTempo({
    required String workoutExerciseId,
    int? eccentric,
    int? concentric,
    int? pause,
  }) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      tempo: TempoModel(
                        eccentric: eccentric ?? exercise.tempo?.eccentric ?? 0,
                        concentric:
                            concentric ?? exercise.tempo?.concentric ?? 0,
                        pause: pause ?? exercise.tempo?.pause ?? 0,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateDistanceValue(String workoutExerciseId, double distance) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      distance: DistanceModel(
                        value: distance,
                        unit:
                            exercise.distance?.unit ?? DistanceUnit.kilometers,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateDistanceUnit(String workoutExerciseId, DistanceUnit unit) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      distance: DistanceModel(
                        value: exercise.distance?.value ?? 0,
                        unit: unit,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateIntensityValue(String workoutExerciseId, int intensityValue) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      intensity: IntensityModel(
                        value: intensityValue,
                        type: exercise.intensity?.type ?? IntensityType.zone,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }

  void updateIntensityType(String workoutExerciseId, IntensityType type) {
    final currentState = state.value ?? _initialState;
    state = AsyncValue.data(
      currentState.copyWith(
        workoutExercises: currentState.workoutExercises
            .map(
              (exercise) => exercise.id == workoutExerciseId
                  ? exercise.copyWith(
                      intensity: IntensityModel(
                        value: exercise.intensity?.value ?? 0,
                        type: type,
                      ),
                    )
                  : exercise,
            )
            .toList(),
      ),
    );
  }
}
