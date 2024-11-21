// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutExerciseModelImpl _$$WorkoutExerciseModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WorkoutExerciseModelImpl',
      json,
      ($checkedConvert) {
        final val = _$WorkoutExerciseModelImpl(
          id: $checkedConvert('id', (v) => v as String),
          stepId: $checkedConvert('stepId', (v) => v as String),
          techniqueId: $checkedConvert('techniqueId', (v) => v as String),
          reps: $checkedConvert(
              'reps',
              (v) => v == null
                  ? null
                  : RepsModel.fromJson(v as Map<String, dynamic>)),
          duration: $checkedConvert(
              'duration',
              (v) => v == null
                  ? null
                  : DurationModel.fromJson(v as Map<String, dynamic>)),
          load: $checkedConvert(
              'load',
              (v) => v == null
                  ? null
                  : LoadModel.fromJson(v as Map<String, dynamic>)),
          restTimeBetweenSets: $checkedConvert(
              'restTimeBetweenSets',
              (v) => v == null
                  ? null
                  : DurationModel.fromJson(v as Map<String, dynamic>)),
          tempo: $checkedConvert(
              'tempo',
              (v) => v == null
                  ? null
                  : TempoModel.fromJson(v as Map<String, dynamic>)),
          distance: $checkedConvert(
              'distance',
              (v) => v == null
                  ? null
                  : DistanceModel.fromJson(v as Map<String, dynamic>)),
          intensity: $checkedConvert(
              'intensity',
              (v) => v == null
                  ? null
                  : IntensityModel.fromJson(v as Map<String, dynamic>)),
          customNotes: $checkedConvert('customNotes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WorkoutExerciseModelImplToJson(
        _$WorkoutExerciseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stepId': instance.stepId,
      'techniqueId': instance.techniqueId,
      'reps': instance.reps?.toJson(),
      'duration': instance.duration?.toJson(),
      'load': instance.load?.toJson(),
      'restTimeBetweenSets': instance.restTimeBetweenSets?.toJson(),
      'tempo': instance.tempo?.toJson(),
      'distance': instance.distance?.toJson(),
      'intensity': instance.intensity?.toJson(),
      'customNotes': instance.customNotes,
    };
