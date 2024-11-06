import 'package:ez_fit_app/src/utils/localization/get_locale.codegen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_local.codegen.g.dart';

/// observer used to notify the caller when the locale changes
class _LocaleObserver extends WidgetsBindingObserver {
  _LocaleObserver(this._didChangeLocales);

  final void Function(List<Locale>? locales) _didChangeLocales;

  @override
  void didChangeLocales(List<Locale>? locales) {
    _didChangeLocales(locales);
  }
}

/// Providing the app localizations.
@Riverpod(keepAlive: true)
class AppLocal extends _$AppLocal {
  @override
  AppLocalizations build() {
    state = lookupAppLocalizations(ref.watch(getLocaleProvider));
    final observer = _LocaleObserver((locales) {
      state = lookupAppLocalizations(ref.watch(getLocaleProvider));
    });
    final binding = WidgetsBinding.instance..addObserver(observer);
    ref.onDispose(() => binding.removeObserver(observer));
    return state;
  }
}
