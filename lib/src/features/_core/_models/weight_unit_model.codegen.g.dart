// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_unit_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightUnitModelImpl _$$WeightUnitModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WeightUnitModelImpl',
      json,
      ($checkedConvert) {
        final val = _$WeightUnitModelImpl(
          unit: $checkedConvert(
              'unit', (v) => const WeightUnitConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WeightUnitModelImplToJson(
        _$WeightUnitModelImpl instance) =>
    <String, dynamic>{
      'unit': const WeightUnitConverter().toJson(instance.unit),
    };
