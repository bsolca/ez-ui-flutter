// sidebar_item.dart
import 'package:flutter/material.dart';
import 'package:impostor/src/shared/sidebar/sidebar_consts.dart';

/// A [SidebarItem] widget that represents a single item in the sidebar.
///
/// This widget displays text and indicates selection status.
/// It handles tap interactions to notify when the item is selected.
/// It also provides hover and splash effects for better user interaction.
class SidebarItem extends StatefulWidget {
  /// Creates a [SidebarItem] widget.
  ///
  /// The [text], [isSelected], and [onTap] parameters are required.
  const SidebarItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  /// The text label of the sidebar item.
  final String text;

  /// Whether the sidebar item is currently selected.
  final bool isSelected;

  /// Callback invoked when the sidebar item is tapped.
  final VoidCallback onTap;

  @override
  State<SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<SidebarItem> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedContainer(
      duration: SidebarConsts.animationDuration,
      decoration: ShapeDecoration(
        shape: SidebarConsts.getSidebarItemShapeBorder(),
        color: widget.isSelected
            ? colorScheme.primary.withOpacity(0.1)
            : Colors.transparent, // Example selected color
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
          overlayColor: WidgetStateProperty.all(
            SidebarConsts.getSidebarItemOverlayColor(colorScheme),
          ),
          borderRadius:
          BorderRadius.circular(SidebarConsts.sidebarItemInkWellBorderRadius),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: SidebarConsts.sidebarItemContentPadding,
            child: Text(
              widget.text,
              style: SidebarConsts.sidebarItemTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
