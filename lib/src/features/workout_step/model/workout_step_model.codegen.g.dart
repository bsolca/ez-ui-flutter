// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_step_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutStepModelImpl _$$WorkoutStepModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WorkoutStepModelImpl',
      json,
      ($checkedConvert) {
        final val = _$WorkoutStepModelImpl(
          workoutStepId: $checkedConvert('workoutStepId', (v) => v as String),
          workoutId: $checkedConvert('workoutId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          setCount: $checkedConvert('setCount', (v) => (v as num).toInt()),
          restTime: $checkedConvert(
              'restTime',
              (v) => v == null
                  ? null
                  : DurationModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WorkoutStepModelImplToJson(
        _$WorkoutStepModelImpl instance) =>
    <String, dynamic>{
      'workoutStepId': instance.workoutStepId,
      'workoutId': instance.workoutId,
      'name': instance.name,
      'description': instance.description,
      'setCount': instance.setCount,
      'restTime': instance.restTime?.toJson(),
    };
