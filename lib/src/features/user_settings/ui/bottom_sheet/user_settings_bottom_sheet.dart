import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user_settings/ui/bottom_sheet/categories/user_settings_appearance.dart';
import 'package:impostor/src/features/user_settings/ui/bottom_sheet/categories/user_settings_language.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';

/// Widget in the builder of the bottom sheet method.
class UserSettingsBottomSheet extends ConsumerWidget {
  /// Widget in the builder of the bottom sheet method.
  const UserSettingsBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: const [
        UserSettingsAppearance(),
        UserSettingsLanguage(),
        SizedBox.shrink(),
      ].withSpaceBetween(
        height: ConstLayout.spacerSmall,
      ),
    );
  }
}
