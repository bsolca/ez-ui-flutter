import 'dart:ui';

import 'package:impostor/src/features/user_settings/model/user_settings.codegen.dart';
import 'package:impostor/src/features/user_settings/service/user_settings_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_settings_language_controller.codegen.g.dart';

/// Controller the [UserSettings] language.
@Riverpod(keepAlive: true)
class UserSettingsLanguageController extends _$UserSettingsLanguageController {
  @override
  Future<Locale?> build() async {
    final userSettingsRepo = ref.read(
      userSettingsServiceProvider.notifier,
    );
    final languageCode = await userSettingsRepo.getLanguageCode();
    return languageCode == null ? null : Locale(languageCode);
  }

  /// Set the language.
  Future<void> setLanguage(String? languageCode) async {
    await ref
        .read(
          userSettingsServiceProvider.notifier,
        )
        .setLanguageCode(languageCode);

    state = AsyncData(languageCode == null ? null : Locale(languageCode));
  }
}
