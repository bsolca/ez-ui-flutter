import 'package:impostor/src/features/hive/data/hive_provider.codegen.dart';
import 'package:impostor/src/features/user_settings/data/user_settings_repository_hive.dart';
import 'package:impostor/src/features/user_settings/model/user_settings.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_settings_repository.codegen.g.dart';

/// Interface class to store user settings.
abstract interface class UserSettingsRepository {
  /// Returns the user settings.
  Future<UserSettings> getUserSettings();

  /// Saves the user settings.
  Future<void> saveUserSettings(UserSettings userSettings);
}

/// User settings repository provider.
@riverpod
UserSettingsRepository userSettingsRepository(UserSettingsRepositoryRef ref) {
  final userSettingsBox = ref.watch(hiveUserSettingsBoxProvider);

  return UserSettingsRepositoryHive(userSettingsBox);
}
