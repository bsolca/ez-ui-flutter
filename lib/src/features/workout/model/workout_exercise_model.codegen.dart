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
    required String id, // Unique identifier for the workout exercise
    required String exerciseId, // Links to ExerciseModel by ID
    RepsModel? reps, // Optional repetitions information
    DurationModel? duration, // Optional duration for time-based exercises
    LoadModel? load, // Optional load or weight information
    DurationModel? restTimeBetweenSets, // Optional rest time between sets
    TempoModel? tempo, // Optional tempo information for the exercise
    DistanceModel? distance, // Optional distance information
    IntensityModel? intensity, // Optional intensity level information
    String? customNotes, // Optional custom notes
  }) = _WorkoutExerciseModel;

  /// Creates a new workout exercise model from a JSON map.
  factory WorkoutExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExerciseModelFromJson(json);
}
