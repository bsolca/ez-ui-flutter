import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user_settings/ui/controller/user_settings_brightness_controller.codegen.dart';
import 'package:impostor/src/features/user_settings/ui/drop_down/shared/user_settings_drop_down_category.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';

/// Dropdown button for the brightness settings.
class UserSettingsDropDownBrightness extends ConsumerWidget {
  /// Dropdown button for the brightness settings.
  const UserSettingsDropDownBrightness({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pod = ref.watch(userSettingsBrightnessControllerProvider);
    return pod.when(
      data: (brightness) {
        return UserSettingsDropDownCategory(
          value: brightness == null
              ? ref.loc.system
              : brightness == Brightness.light
                  ? ref.loc.light
                  : ref.loc.dark,
          onChanged: (text) async {
            await ref
                .read(userSettingsBrightnessControllerProvider.notifier)
                .setBrightness(
                  text == ref.loc.system
                      ? null
                      : text == ref.loc.light
                          ? Brightness.light
                          : Brightness.dark,
                );
          },
          items: [
            buildDropdownMenuItem(
              ref.loc.system,
              const Icon(Icons.brightness_auto),
            ),
            buildDropdownMenuItem(
              ref.loc.light,
              const Icon(Icons.brightness_5),
            ),
            buildDropdownMenuItem(
              ref.loc.dark,
              const Icon(Icons.brightness_2),
            ),
          ],
        );
      },
      error: (error, _) => Text(error.toString()),
      loading: CircularProgressIndicator.new,
    );
  }
}
