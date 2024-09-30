import 'package:flutter/material.dart';
import 'package:impostor/src/features/user_settings/ui/drop_down/user_settings_drop_down_brightness.dart';
import 'package:impostor/src/features/user_settings/ui/drop_down/user_settings_drop_down_language.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';

/// Scaffold widget for the app.
class AppScaffold extends StatelessWidget {
  /// Scaffold widget for the app.
  const AppScaffold({
    required this.body,
    super.key,
  });

  /// The widget to display in the body of the scaffold.
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.only(
            top: ConstLayout.spacer,
            right: ConstLayout.spacer,
          ),
          child: AppBar(
            actions: const [
              Flexible(child: UserSettingsDropDownLanguage()),
              Flexible(child: UserSettingsDropDownBrightness()),
            ].withSpaceBetween(
              width: ConstLayout.spacer,
            ),
          ),
        ),
      ),
      body: body,
    );
  }
}
