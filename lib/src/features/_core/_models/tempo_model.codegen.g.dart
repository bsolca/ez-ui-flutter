// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tempo_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempoModelImpl _$$TempoModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TempoModelImpl',
      json,
      ($checkedConvert) {
        final val = _$TempoModelImpl(
          eccentric: $checkedConvert(
              'eccentric', (v) => const DefaultDoubleConverter().fromJson(v)),
          pause: $checkedConvert(
              'pause', (v) => const DefaultDoubleConverter().fromJson(v)),
          concentric: $checkedConvert(
              'concentric', (v) => const DefaultDoubleConverter().fromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TempoModelImplToJson(_$TempoModelImpl instance) =>
    <String, dynamic>{
      'eccentric': const DefaultDoubleConverter().toJson(instance.eccentric),
      'pause': const DefaultDoubleConverter().toJson(instance.pause),
      'concentric': const DefaultDoubleConverter().toJson(instance.concentric),
    };
