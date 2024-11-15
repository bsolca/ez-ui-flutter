// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reps_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepsModelImpl _$$RepsModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RepsModelImpl',
      json,
      ($checkedConvert) {
        final val = _$RepsModelImpl(
          count: $checkedConvert(
              'count', (v) => const DefaultIntConverter().fromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RepsModelImplToJson(_$RepsModelImpl instance) =>
    <String, dynamic>{
      'count': const DefaultIntConverter().toJson(instance.count),
    };
