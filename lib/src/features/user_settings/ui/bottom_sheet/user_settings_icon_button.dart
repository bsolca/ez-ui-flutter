import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user_settings/ui/bottom_sheet/user_settings_bottom_sheet.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';

/// Settings icon button.
///
/// Display the settings to the user.
class UserSettingsIconButton extends ConsumerWidget {
  /// Settings icon button.
  const UserSettingsIconButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          showDragHandle: true,
          barrierLabel: 'Settings',
          useSafeArea: true,
          builder: (BuildContext context) => const Padding(
            padding: EdgeInsets.only(
              left: ConstLayout.spacerSmall,
              right: ConstLayout.spacerSmall,
            ),
            child: UserSettingsBottomSheet(),
          ),
        );
      },
    );
  }
}
