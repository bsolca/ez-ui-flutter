// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intensity_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntensityModelImpl _$$IntensityModelImplFromJson(Map<String, dynamic> json) =>
    _$IntensityModelImpl(
      type: $enumDecode(_$IntensityTypeEnumMap, json['type']),
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$IntensityModelImplToJson(
        _$IntensityModelImpl instance) =>
    <String, dynamic>{
      'type': _$IntensityTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$IntensityTypeEnumMap = {
  IntensityType.zone: 'zone',
  IntensityType.rpe: 'rpe',
};
