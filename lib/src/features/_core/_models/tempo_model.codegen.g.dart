// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tempo_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempoModelImpl _$$TempoModelImplFromJson(Map<String, dynamic> json) =>
    _$TempoModelImpl(
      eccentric: (json['eccentric'] as num).toDouble(),
      pause: (json['pause'] as num).toDouble(),
      concentric: (json['concentric'] as num).toDouble(),
    );

Map<String, dynamic> _$$TempoModelImplToJson(_$TempoModelImpl instance) =>
    <String, dynamic>{
      'eccentric': instance.eccentric,
      'pause': instance.pause,
      'concentric': instance.concentric,
    };
