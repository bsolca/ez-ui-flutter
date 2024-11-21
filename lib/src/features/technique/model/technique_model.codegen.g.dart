// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technique_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TechniqueModelImpl _$$TechniqueModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TechniqueModelImpl',
      json,
      ($checkedConvert) {
        final val = _$TechniqueModelImpl(
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

Map<String, dynamic> _$$TechniqueModelImplToJson(
        _$TechniqueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
      'tags': instance.tags,
      'description': instance.description,
    };
