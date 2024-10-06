import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// A [EzSidebarItem] widget that represents a single item in the sidebar.
///
/// This widget displays an optional icon, text, and indicates selection status.
/// It handles tap interactions to notify when the item is selected.
/// It also provides hover and splash effects for better user interaction.
class EzSidebarItem extends StatefulWidget {
  /// Creates a [EzSidebarItem] widget.
  ///
  /// The [text], [isSelected], and [onTap] parameters are required.
  /// The [icon] parameter is optional and can be used to display an icon.
  const EzSidebarItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
    required this.icon,
    required this.svgPath,
  });

  /// The text label of the sidebar item.
  final String text;

  /// Whether the sidebar item is currently selected.
  final bool isSelected;

  /// Callback invoked when the sidebar item is tapped.
  final VoidCallback onTap;

  /// The path to the SVG icon asset.
  final IconData? icon;

  /// Svg asset path.
  final String? svgPath;

  @override
  State<EzSidebarItem> createState() => _EzSidebarItemState();
}

class _EzSidebarItemState extends State<EzSidebarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final icon = widget.icon;
    final svgPath = widget.svgPath;

    // Determine the icon color based on hover and selection states
    Color iconColor;
    if (_isHovered) {
      iconColor = EzSidebarConsts.getSidebarItemIconHoverColor(colorScheme);
    } else if (widget.isSelected) {
      iconColor = EzSidebarConsts.getSidebarItemIconSelectedColor(colorScheme);
    } else {
      iconColor = EzSidebarConsts.getSidebarItemIconDefaultColor(colorScheme);
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: EzSidebarConsts.animationDuration,
        decoration: ShapeDecoration(
          shape: EzSidebarConsts.getSidebarItemShapeBorder(),
        ),
        child: ClipSmoothRect(
          radius: const SmoothBorderRadius.all(
            SmoothRadius(
              cornerRadius: EzSidebarConsts.itemBorderRadius,
              cornerSmoothing: EzSidebarConsts.itemBorderSmoothing,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              splashFactory: NoSplash.splashFactory,
              overlayColor: WidgetStateProperty.all(
                EzSidebarConsts.getSidebarItemOverlayColor(colorScheme),
              ),
              child: Padding(
                padding: EzSidebarConsts.contentPadding,
                // Using contentPadding here
                child: Row(
                  children: [
                    if (svgPath != null)
                      Padding(
                        padding: EzSidebarConsts.sidebarItemIconPadding,
                        child: SvgPicture.asset(
                          svgPath,
                          width: EzSidebarConsts.sidebarItemIconSize,
                        ),
                      ),
                    if (icon != null)
                      Padding(
                        padding: EzSidebarConsts.sidebarItemIconPadding,
                        child: Icon(
                          icon,
                          color: iconColor,
                          size: EzSidebarConsts.sidebarItemIconSize,
                        ),
                      ),
                    Text(
                      widget.text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: EzSidebarConsts.sidebarItemTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
