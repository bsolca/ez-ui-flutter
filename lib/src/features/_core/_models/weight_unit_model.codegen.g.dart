// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_unit_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightUnitModelImpl _$$WeightUnitModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeightUnitModelImpl(
      unit: $enumDecode(_$WeightUnitEnumMap, json['unit']),
    );

Map<String, dynamic> _$$WeightUnitModelImplToJson(
        _$WeightUnitModelImpl instance) =>
    <String, dynamic>{
      'unit': _$WeightUnitEnumMap[instance.unit]!,
    };

const _$WeightUnitEnumMap = {
  WeightUnit.kg: 'kg',
  WeightUnit.lbs: 'lbs',
  WeightUnit.percent: 'percent',
};
