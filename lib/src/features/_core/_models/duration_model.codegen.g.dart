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
          seconds: $checkedConvert(
              'seconds', (v) => const DefaultIntConverter().fromJson(v)),
          minutes: $checkedConvert(
              'minutes', (v) => const DefaultIntConverter().fromJson(v)),
          hours: $checkedConvert(
              'hours', (v) => const DefaultIntConverter().fromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DurationModelImplToJson(_$DurationModelImpl instance) =>
    <String, dynamic>{
      'seconds': const DefaultIntConverter().toJson(instance.seconds),
      'minutes': const DefaultIntConverter().toJson(instance.minutes),
      'hours': const DefaultIntConverter().toJson(instance.hours),
    };
