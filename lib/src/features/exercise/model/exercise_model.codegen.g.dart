// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseModelImpl _$$ExerciseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
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
