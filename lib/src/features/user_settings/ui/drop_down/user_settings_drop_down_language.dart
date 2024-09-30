import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user_settings/ui/drop_down/shared/user_settings_drop_down_category.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';
import 'package:impostor/src/utils/localization/get_locale.codegen.dart';

/// Drop down to change the language of the app.
class UserSettingsDropDownLanguage extends ConsumerWidget {
  /// Drop down to change the language of the app.
  const UserSettingsDropDownLanguage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final local = ref.watch(getLocaleProvider);

    final sortedTags = [
      ref.loc.french,
      ref.loc.english,
    ]..sort((a, b) => a.compareTo(b));

    return UserSettingsDropDownCategory<String>(
      value: local.toLanguageTag() == 'en' ? ref.loc.english : ref.loc.french,
      onChanged: (value) async {
        await ref.read(getLocaleProvider.notifier).setLanguageCode(
              value == ref.loc.english ? 'en' : 'fr',
            );
      },
      items: sortedTags
          .map(
            (e) => buildDropdownMenuItem(
              e,
              CountryFlag.fromCountryCode(
                e == ref.loc.english ? 'US' : 'FR',
                width: ConstLayout.iconSmallSize,
                height: ConstLayout.iconSmallSize,
              ),
            ),
          )
          .toList(),
    );
  }
}
