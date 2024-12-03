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
              'eccentric', (v) => const DefaultIntConverter().fromJson(v)),
          pause: $checkedConvert(
              'pause', (v) => const DefaultIntConverter().fromJson(v)),
          concentric: $checkedConvert(
              'concentric', (v) => const DefaultIntConverter().fromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TempoModelImplToJson(_$TempoModelImpl instance) =>
    <String, dynamic>{
      'eccentric': const DefaultIntConverter().toJson(instance.eccentric),
      'pause': const DefaultIntConverter().toJson(instance.pause),
      'concentric': const DefaultIntConverter().toJson(instance.concentric),
    };
