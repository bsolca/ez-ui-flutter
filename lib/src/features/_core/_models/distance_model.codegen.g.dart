// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistanceModelImpl _$$DistanceModelImplFromJson(Map<String, dynamic> json) =>
    _$DistanceModelImpl(
      value: (json['value'] as num).toDouble(),
      unit: $enumDecode(_$DistanceUnitEnumMap, json['unit']),
    );

Map<String, dynamic> _$$DistanceModelImplToJson(_$DistanceModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': _$DistanceUnitEnumMap[instance.unit]!,
    };

const _$DistanceUnitEnumMap = {
  DistanceUnit.meters: 'meters',
  DistanceUnit.kilometers: 'kilometers',
  DistanceUnit.miles: 'miles',
};
