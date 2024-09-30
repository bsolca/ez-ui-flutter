import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user_settings/ui/bottom_sheet/shared/user_settings_category.dart';
import 'package:impostor/src/features/user_settings/ui/controller/user_settings_brightness_controller.codegen.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';

/// Appearance settings in the bottom sheet.
class UserSettingsAppearance extends ConsumerWidget {
  /// Appearance settings in the bottom sheet.
  const UserSettingsAppearance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userSettingsNotifierPod = ref.watch(
      userSettingsBrightnessControllerProvider.notifier,
    );
    final userSettingsPod = ref.watch(userSettingsBrightnessControllerProvider);

    return UserSettingsCategory(
      title: ref.loc.appearance,
      children: [
        userSettingsPod.when(
          data: (brightness) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ref.loc.system,
                ref.loc.light,
                ref.loc.dark,
              ]
                  .map(
                    (text) => RadioListTile(
                      dense: true,
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: Text(
                        text,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      value: text,
                      groupValue: brightness == null
                          ? ref.loc.system
                          : brightness == Brightness.light
                              ? ref.loc.light
                              : ref.loc.dark,
                      onChanged: (value) async {
                        await userSettingsNotifierPod.setBrightness(
                          value == ref.loc.system
                              ? null
                              : value == ref.loc.light
                                  ? Brightness.light
                                  : Brightness.dark,
                        );
                      },
                    ),
                  )
                  .toList(),
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(error.toString()),
        ),
      ],
    );
  }
}
