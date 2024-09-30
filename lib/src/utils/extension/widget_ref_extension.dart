import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/utils/localization/app_local.codegen.dart';
import 'package:impostor/src/utils/responsive/layout_size_enum.dart';
import 'package:impostor/src/utils/responsive/screen_size_pod.dart';

/// Use ref.loc.<method> to access the AppLocalizations methods.
extension ExtWidgetRef on WidgetRef {
  /// Returns the translated string for the current locale.
  AppLocalizations get loc => watch(appLocalProvider);

  /// Returns the padding for the current screen size.
  double get padding => watch(screenSizePod.notifier).padding;

  /// Whether the screen is in compact size.
  bool get isCompactScreen => watch(screenSizePod) == LayoutSize.compact;
}
