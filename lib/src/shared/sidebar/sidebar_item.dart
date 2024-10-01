// sidebar_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impostor/src/shared/sidebar/sidebar_consts.dart';

/// A [SidebarItem] widget that represents a single item in the sidebar.
///
/// This widget displays an optional icon, text, and indicates selection status.
/// It handles tap interactions to notify when the item is selected.
/// It also provides hover and splash effects for better user interaction.
class SidebarItem extends StatefulWidget {
  /// Creates a [SidebarItem] widget.
  ///
  /// The [text], [isSelected], and [onTap] parameters are required.
  /// The [iconPath] parameter is optional and can be used to display an icon.
  const SidebarItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
    this.iconPath,
  });

  /// The text label of the sidebar item.
  final String text;

  /// Whether the sidebar item is currently selected.
  final bool isSelected;

  /// Callback invoked when the sidebar item is tapped.
  final VoidCallback onTap;

  /// The path to the SVG icon asset.
  final String? iconPath;

  @override
  State<SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<SidebarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // Determine the icon color based on hover and selection states
    Color iconColor;
    if (_isHovered) {
      iconColor = SidebarConsts.getSidebarItemIconHoverColor(colorScheme);
    } else if (widget.isSelected) {
      iconColor = SidebarConsts.getSidebarItemIconSelectedColor(colorScheme);
    } else {
      iconColor = SidebarConsts.getSidebarItemIconDefaultColor(colorScheme);
    }

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      cursor: SystemMouseCursors.click, // Optional: Change cursor on hover
      child: AnimatedContainer(
        duration: SidebarConsts.animationDuration,
        decoration: ShapeDecoration(
          shape: SidebarConsts.getSidebarItemShapeBorder(),
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
            child: Padding(
              padding: SidebarConsts.sidebarItemContentPadding,
              child: Row(
                children: [
                  if (widget.iconPath != null)
                    Padding(
                      padding: SidebarConsts.sidebarItemIconPadding,
                      child: SvgPicture.asset(
                        widget.iconPath!,
                        width: SidebarConsts.sidebarItemIconSize,
                        height: SidebarConsts.sidebarItemIconSize,
                        colorFilter: ColorFilter.mode(
                          iconColor,
                          SidebarConsts.sidebarItemIconBlendMode,
                        ),
                      ),
                    ),
                  Expanded(
                    child: Text(
                      widget.text,
                      style: SidebarConsts.sidebarItemTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
