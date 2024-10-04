import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';

/// Divider used between sidebar items in the layout or the popover.
class EzSidebarDivider extends StatelessWidget {
  /// Divider used between sidebar items in the layout or the popover.
  const EzSidebarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EzSidebarConsts.horizontalPadding,
      child: Divider(
        thickness: EzSidebarConsts.dividerThickness,
        color: EzSidebarConsts.getDividerColor(colorScheme),
      ),
    );
  }
}
