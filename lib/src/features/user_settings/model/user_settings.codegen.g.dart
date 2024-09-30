// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingsImpl _$$UserSettingsImplFromJson(Map<String, dynamic> json) =>
    _$UserSettingsImpl(
      brightness: $enumDecodeNullable(_$BrightnessEnumMap, json['brightness']),
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$UserSettingsImplToJson(_$UserSettingsImpl instance) =>
    <String, dynamic>{
      'brightness': _$BrightnessEnumMap[instance.brightness],
      'languageCode': instance.languageCode,
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
