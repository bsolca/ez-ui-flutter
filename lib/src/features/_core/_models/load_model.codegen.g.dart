// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadModelImpl _$$LoadModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LoadModelImpl',
      json,
      ($checkedConvert) {
        final val = _$LoadModelImpl(
          amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
          unit: $checkedConvert(
              'unit', (v) => $enumDecode(_$WeightUnitEnumMap, v)),
        );
        return val;
      },
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