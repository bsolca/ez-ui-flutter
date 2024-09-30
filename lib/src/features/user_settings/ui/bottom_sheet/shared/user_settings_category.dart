import 'package:flutter/material.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';

/// Category in the bottom sheet with a title and a list of settings.
class UserSettingsCategory extends StatelessWidget {
  /// Appearance settings in the bottom sheet.
  const UserSettingsCategory({
    super.key,
    required this.title,
    required this.children,
  });

  /// Title of the category.
  final String title;

  /// List of settings.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: ConstLayout.spacerSmall,
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Card(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstLayout.borderRadiusSmall),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ].withSpaceBetween(
        height: ConstLayout.spacerSmall,
      ),
    );
  }
}
