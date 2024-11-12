// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadModelImpl _$$LoadModelImplFromJson(Map<String, dynamic> json) =>
    _$LoadModelImpl(
      amount: (json['amount'] as num).toDouble(),
      unit: $enumDecode(_$WeightUnitEnumMap, json['unit']),
    );

Map<String, dynamic> _$$LoadModelImplToJson(_$LoadModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unit': _$WeightUnitEnumMap[instance.unit]!,
    };

const _$WeightUnitEnumMap = {
  WeightUnit.kg: 'kg',
  WeightUnit.lbs: 'lbs',
  WeightUnit.percent: 'percent',
};
