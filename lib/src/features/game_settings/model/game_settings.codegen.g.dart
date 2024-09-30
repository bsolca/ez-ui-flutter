// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_settings.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameSettingsImpl _$$GameSettingsImplFromJson(Map<String, dynamic> json) =>
    _$GameSettingsImpl(
      numberParties: (json['numberParties'] as num).toInt(),
      numberRounds: (json['numberRounds'] as num).toInt(),
    );

Map<String, dynamic> _$$GameSettingsImplToJson(_$GameSettingsImpl instance) =>
    <String, dynamic>{
      'numberParties': instance.numberParties,
      'numberRounds': instance.numberRounds,
    };
