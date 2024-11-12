// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutExerciseModelImpl _$$WorkoutExerciseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutExerciseModelImpl(
      id: json['id'] as String,
      exerciseId: json['exerciseId'] as String,
      reps: json['reps'] == null
          ? null
          : RepsModel.fromJson(json['reps'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : DurationModel.fromJson(json['duration'] as Map<String, dynamic>),
      load: json['load'] == null
          ? null
          : LoadModel.fromJson(json['load'] as Map<String, dynamic>),
      restTimeBetweenSets: json['restTimeBetweenSets'] == null
          ? null
          : DurationModel.fromJson(
              json['restTimeBetweenSets'] as Map<String, dynamic>),
      tempo: json['tempo'] == null
          ? null
          : TempoModel.fromJson(json['tempo'] as Map<String, dynamic>),
      distance: json['distance'] == null
          ? null
          : DistanceModel.fromJson(json['distance'] as Map<String, dynamic>),
      intensity: json['intensity'] == null
          ? null
          : IntensityModel.fromJson(json['intensity'] as Map<String, dynamic>),
      customNotes: json['customNotes'] as String?,
    );

Map<String, dynamic> _$$WorkoutExerciseModelImplToJson(
        _$WorkoutExerciseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exerciseId': instance.exerciseId,
      'reps': instance.reps?.toJson(),
      'duration': instance.duration?.toJson(),
      'load': instance.load?.toJson(),
      'restTimeBetweenSets': instance.restTimeBetweenSets?.toJson(),
      'tempo': instance.tempo?.toJson(),
      'distance': instance.distance?.toJson(),
      'intensity': instance.intensity?.toJson(),
      'customNotes': instance.customNotes,
    };
