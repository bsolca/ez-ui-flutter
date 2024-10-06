import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_item_data.codegen.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';
import 'package:impostor/src/utils/localization/get_locale.codegen.dart';

/// Builds an EzSidebarItemData configured for language switching.
class SidebarItemLanguage {
  /// Builds an EzSidebarItemData configured for language switching.
  static EzSidebarItemData build(WidgetRef ref, BuildContext context) {
    final locale = ref.watch(getLocaleProvider);
    final isEnglish = locale.toLanguageTag() == 'en';
    final switchToIcon = isEnglish ? EzIcons.flagUs : EzIcons.flagFr;

    return EzSidebarItemData.bottom(
      text: ref.loc.changeLanguage,
      svgPath: switchToIcon.path,
      onTap: () async {
        await ref.read(getLocaleProvider.notifier).setLanguageCode(
          isEnglish ? 'fr' : 'en',
        );
      },
    );
  }
}
