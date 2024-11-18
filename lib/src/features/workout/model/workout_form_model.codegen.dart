import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_form_model.codegen.freezed.dart';

@freezed
class WorkoutFormModel with _$WorkoutFormModel {
  /// Workout model to define the structure and details of a workout.
  const factory WorkoutFormModel({
    required WorkoutModel workout,
    required List<WorkoutStepModel> workoutSteps,
    required List<WorkoutExerciseModel> workoutExercises,
  }) = _WorkoutFormModel;
}
