// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_step_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutStepModelImpl _$$WorkoutStepModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutStepModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      setCount: (json['setCount'] as num).toInt(),
      restTime: json['restTime'] == null
          ? null
          : DurationModel.fromJson(json['restTime'] as Map<String, dynamic>),
      workoutExerciseIds: (json['workoutExerciseIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WorkoutStepModelImplToJson(
        _$WorkoutStepModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'setCount': instance.setCount,
      'restTime': instance.restTime?.toJson(),
      'workoutExerciseIds': instance.workoutExerciseIds,
    };
