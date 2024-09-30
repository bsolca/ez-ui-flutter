import 'dart:ui';

import 'package:impostor/src/features/user_settings/data/user_settings_repository.codegen.dart';
import 'package:impostor/src/features/user_settings/model/user_settings.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_settings_service.codegen.g.dart';

/// Service for the [UserSettings].
@riverpod
class UserSettingsService extends _$UserSettingsService {
  @override
  Future<UserSettings> build() async {
    final userSettingsRepo = ref.watch(userSettingsRepositoryProvider);
    final userSettings = await userSettingsRepo.getUserSettings();
    final localBrightness = userSettings.brightness;
    final languageCode = userSettings.languageCode;

    return UserSettings(
      brightness: localBrightness,
      languageCode: languageCode,
    );
  }

  /// Set the brightness.
  Future<void> setBrightness(Brightness? brightness) async {
    final userSettingsRepo = ref.watch(userSettingsRepositoryProvider);
    state = await AsyncValue.guard(() async {
      final userSettings = await userSettingsRepo.getUserSettings();
      final newSettings = userSettings.copyWith(brightness: brightness);
      await userSettingsRepo.saveUserSettings(newSettings);
      return newSettings;
    });
  }

  /// Get the brightness.
  Future<Brightness?> getBrightness() async {
    final userSettingsRepo = ref.watch(userSettingsRepositoryProvider);
    final userSettings = await userSettingsRepo.getUserSettings();
    return userSettings.brightness;
  }

  /// Set the language code.
  Future<void> setLanguageCode(String? languageCode) async {
    final userSettingsRepo = ref.watch(userSettingsRepositoryProvider);
    state = await AsyncValue.guard(() async {
      final userSettings = await userSettingsRepo.getUserSettings();
      final newSettings = userSettings.copyWith(languageCode: languageCode);
      await userSettingsRepo.saveUserSettings(newSettings);
      return newSettings;
    });
  }

  /// Get the language.
  Future<String?> getLanguageCode() async {
    final userSettingsRepo = ref.watch(userSettingsRepositoryProvider);
    final userSettings = await userSettingsRepo.getUserSettings();

    return userSettings.languageCode;
  }
}
