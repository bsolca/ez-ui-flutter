// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DurationModelImpl _$$DurationModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DurationModelImpl',
      json,
      ($checkedConvert) {
        final val = _$DurationModelImpl(
          seconds: $checkedConvert('seconds', (v) => (v as num).toInt()),
          minutes: $checkedConvert('minutes', (v) => (v as num).toInt()),
          hours: $checkedConvert('hours', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DurationModelImplToJson(_$DurationModelImpl instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
      'minutes': instance.minutes,
      'hours': instance.hours,
    };
