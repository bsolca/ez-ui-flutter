import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.codegen.freezed.dart';
part 'user_settings.codegen.g.dart';

/// Settings of the user not related to the game.
///
/// When the brightness is null, the user is using the system brightness.
@freezed
class UserSettings with _$UserSettings {
  /// Settings of the user not related to the game.
  const factory UserSettings({
    required Brightness? brightness,
    required String? languageCode,
  }) = _UserSettings;

  /// Default settings.
  factory UserSettings.defaultSettings() => const UserSettings(
        brightness: null,
        languageCode: null,
      );

  /// Create a new instance from JSON.
  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
