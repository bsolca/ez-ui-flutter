// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutModelImpl _$$WorkoutModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WorkoutModelImpl',
      json,
      ($checkedConvert) {
        final val = _$WorkoutModelImpl(
          workoutId: $checkedConvert('workoutId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WorkoutModelImplToJson(_$WorkoutModelImpl instance) =>
    <String, dynamic>{
      'workoutId': instance.workoutId,
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
    };
