// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingsImpl _$$UserSettingsImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UserSettingsImpl',
      json,
      ($checkedConvert) {
        final val = _$UserSettingsImpl(
          brightness: $checkedConvert(
              'brightness', (v) => $enumDecodeNullable(_$BrightnessEnumMap, v)),
          languageCode: $checkedConvert('languageCode', (v) => v as String?),
        );
        return val;
      },
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
