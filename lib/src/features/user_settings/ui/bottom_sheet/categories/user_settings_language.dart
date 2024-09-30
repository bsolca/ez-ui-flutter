import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user_settings/ui/bottom_sheet/shared/user_settings_category.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';
import 'package:impostor/src/utils/localization/get_locale.codegen.dart';
import 'package:impostor/src/utils/localization/local_name_controller.codegen.dart';

/// Language settings in the bottom sheet.
class UserSettingsLanguage extends ConsumerWidget {
  /// Language settings in the bottom sheet.
  const UserSettingsLanguage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final local = ref.watch(getLocaleProvider);
    final tag = local.languageCode;
    final tagName = ref.watch(localNameControllerProvider(tag));
    final sortedTags = [
      ref.loc.french,
      ref.loc.english,
    ]..sort((a, b) => a.compareTo(b));

    return UserSettingsCategory(
      title: ref.loc.language,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sortedTags
              .map(
                (text) => RadioListTile(
                  dense: true,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(
                    text,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  value: text,
                  groupValue: tagName,
                  onChanged: (value) async {
                    await ref.read(getLocaleProvider.notifier).setLanguageCode(
                          value == ref.loc.english ? 'en' : 'fr',
                        );
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
