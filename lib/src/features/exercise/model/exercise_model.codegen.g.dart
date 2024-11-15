// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseModelImpl _$$ExerciseModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ExerciseModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ExerciseModelImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
          videoUrl: $checkedConvert('videoUrl', (v) => v as String?),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          description: $checkedConvert('description', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ExerciseModelImplToJson(_$ExerciseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
      'tags': instance.tags,
      'description': instance.description,
    };
