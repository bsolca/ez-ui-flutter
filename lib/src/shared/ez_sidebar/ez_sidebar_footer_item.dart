import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_item.dart';

/// A widget that displays a footer item in the sidebar.
class EzSidebarFooterItem extends StatelessWidget {
  /// Creates a footer item in the sidebar.
  const EzSidebarFooterItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  /// The text to display in the footer item.
  final String text;

  /// The icon to display in the footer item.
  final EzIcons icon;

  /// The callback to be called when the footer item is tapped.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EzSidebarConsts.horizontalPadding,
      child: EzSidebarItem(
        text: text,
        icon: icon,
        isSelected: false, // Footer items cannot be selected
        onTap: onTap,
      ),
    );
  }
}
