import 'package:ez_fit_app/src/features/_core/_models/distance_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/duration_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/intensity_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/load_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/reps_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/tempo_model.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_exercise_model.codegen.freezed.dart';

part 'workout_exercise_model.codegen.g.dart';

/// Represents an exercise within a workout, with customizable attributes.
@freezed
class WorkoutExerciseModel with _$WorkoutExerciseModel {
  /// Workout-specific exercise model, linking to core exercise details.
  const factory WorkoutExerciseModel({
    required String id,
    required String stepId,
    required String techniqueId,
    required RepsModel? reps,
    required DurationModel? duration,
    required LoadModel? load,
    required DurationModel? restTimeBetweenExercise,
    required TempoModel? tempo,
    required DistanceModel? distance,
    required IntensityModel? intensity,
    required String? customNotes,
  }) = _WorkoutExerciseModel;

  /// Creates a new workout exercise model with default values.
  factory WorkoutExerciseModel.newWorkoutExercise({
    required String id,
    required String stepId,
    required String techniqueId,
  }) {
    return WorkoutExerciseModel(
      id: id,
      stepId: stepId,
      techniqueId: techniqueId,
      reps: null,
      duration: null,
      load: null,
      restTimeBetweenExercise: null,
      tempo: null,
      distance: null,
      intensity: null,
      customNotes: null,
    );
  }

  /// Empty instance of [WorkoutExerciseModel].
  factory WorkoutExerciseModel.empty() => const WorkoutExerciseModel(
        id: '',
        stepId: '',
        techniqueId: '',
        reps: null,
        duration: null,
        load: null,
        restTimeBetweenExercise: null,
        tempo: null,
        distance: null,
        intensity: null,
        customNotes: null,
      );

  /// Creates a new workout exercise model from a JSON map.
  factory WorkoutExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExerciseModelFromJson(json);
}
