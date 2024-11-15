// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistanceModelImpl _$$DistanceModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DistanceModelImpl',
      json,
      ($checkedConvert) {
        final val = _$DistanceModelImpl(
          value: $checkedConvert(
              'value', (v) => const DefaultDoubleConverter().fromJson(v)),
          unit: $checkedConvert('unit',
              (v) => const DistanceUnitConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DistanceModelImplToJson(_$DistanceModelImpl instance) =>
    <String, dynamic>{
      'value': const DefaultDoubleConverter().toJson(instance.value),
      'unit': const DistanceUnitConverter().toJson(instance.unit),
    };
