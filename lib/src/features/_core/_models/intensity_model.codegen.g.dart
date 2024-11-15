// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intensity_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntensityModelImpl _$$IntensityModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$IntensityModelImpl',
      json,
      ($checkedConvert) {
        final val = _$IntensityModelImpl(
          type: $checkedConvert('type',
              (v) => const IntensityTypeConverter().fromJson(v as String)),
          value: $checkedConvert(
              'value', (v) => const DefaultIntConverter().fromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$IntensityModelImplToJson(
        _$IntensityModelImpl instance) =>
    <String, dynamic>{
      'type': const IntensityTypeConverter().toJson(instance.type),
      'value': const DefaultIntConverter().toJson(instance.value),
    };
