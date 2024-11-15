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
              'seconds', (v) => const DefaultDoubleConverter().fromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DurationModelImplToJson(_$DurationModelImpl instance) =>
    <String, dynamic>{
      'seconds': const DefaultDoubleConverter().toJson(instance.seconds),
    };
