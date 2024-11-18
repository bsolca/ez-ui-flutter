import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_model.codegen.freezed.dart';
part 'workout_model.codegen.g.dart';

/// Represents a complete workout with steps and metadata.
@freezed
class WorkoutModel with _$WorkoutModel {
  /// Workout model to define the structure and details of a workout.
  const factory WorkoutModel({
    required String workoutId, // Unique identifier for the workout
    required String name, // Name of the workout
    required String? description, // Optional description for the workout
    required List<String> tags,
  }) = _WorkoutModel;

  /// Creates a new workout model from a JSON map.
  factory WorkoutModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutModelFromJson(json);
}
