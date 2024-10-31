import 'dart:ui';

import 'package:ez_fit_app/src/features/user_settings/service/user_settings_service.codegen.dart';
import 'package:ez_fit_app/src/utils/log/logger.dart';
import 'package:flutter/scheduler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_locale.codegen.g.dart';

/// The provider that provides the locale.
@Riverpod(keepAlive: true)
class GetLocale extends _$GetLocale {
  static const _defaultLocale = 'en';

  @override
  Raw<Locale> build() {
    return const Locale(_defaultLocale);
  }

  /// Set the locale.
  Future<void> setLanguageCode(String languageCode) async {
    logInfo('Locale changed to $languageCode');
    await ref
        .read(
          userSettingsServiceProvider.notifier,
        )
        .setLanguageCode(languageCode);
    state = Locale(languageCode);
  }

  /// Resolve the locale for the MaterialApp.
  Locale? localeResolutionCallback(
    Locale? deviceLocale,
    Iterable<Locale> supportedLocales,
  ) {
    final localDeviceLocale = deviceLocale;

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final userSettingsRepo = ref.read(
        userSettingsServiceProvider.notifier,
      );
      final localLanguageCode = await userSettingsRepo.getLanguageCode();

      if (localLanguageCode == null) {
        await userSettingsRepo.setLanguageCode(state.languageCode);
      } else {
        state = Locale(localDeviceLocale?.languageCode ?? localLanguageCode);
      }
    });

    Locale returnAndSetState(String languageCode) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        state = Locale(languageCode);
      });
      return Locale(languageCode);
    }

    if (localDeviceLocale == null) {
      return returnAndSetState(_defaultLocale);
    }

    for (final locale in supportedLocales) {
      if (locale.languageCode == localDeviceLocale.languageCode) {
        return returnAndSetState(localDeviceLocale.languageCode);
      }
    }

    return returnAndSetState(_defaultLocale);
  }
}
