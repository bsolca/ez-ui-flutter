import 'package:ez_fit_app/src/features/_core/_models/duration_model.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_step_model.codegen.freezed.dart';

part 'workout_step_model.codegen.g.dart';

/// Represents a step or round in a workout, containing references to workout.
@freezed
class WorkoutStepModel with _$WorkoutStepModel {
  /// Workout step model to define each phase in a workout.
  const factory WorkoutStepModel({
    required String id, // Unique identifier for the step
    required String workoutId, // ID of the workout this step belongs to
    required String name, // Name of the step, e.g., "Round 1"
    required String? description, // Optional description for this step
    required int setCount, // Number of times to repeat this step
    required DurationModel?
        restTime, // Optional rest time after completing this step
  }) = _WorkoutStepModel;

  /// Creates a new workout step model from a JSON map.
  factory WorkoutStepModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutStepModelFromJson(json);
}
