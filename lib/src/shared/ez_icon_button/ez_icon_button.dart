import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';

/// A customizable icon button with a smaller hover and click effect.
class EzIconButton extends StatefulWidget {
  /// Creates an [EzIconButton] widget.
  ///
  /// The [icon] and [onPressed] parameters are required.
  /// The [tooltip] parameter is optional and can be used to display a tooltip.
  const EzIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.tooltip,
    this.size,
  });



  /// The icon to display inside the button.
  final IconData icon;

  /// The callback that is called when the button is tapped.
  final VoidCallback onPressed;

  /// The color of the icon.
  final Color? iconColor;

  /// Optional tooltip to display when is long-pressed or hovered over.
  final String? tooltip;

  /// Optional size of the icon.
  final double? size;

  @override
  State<EzIconButton> createState() => _EzIconButtonState();
}

class _EzIconButtonState extends State<EzIconButton> {
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Determine the icon color based on hover state
    var iconColor = widget.iconColor ?? colorScheme.onSurface;
    if (_isHovered) {
      iconColor = colorScheme.primary;
    }

    final iconSize = widget.size ?? 12;

    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapDown: (_) => setState(() {
          _isPressed = true;
        }),
        onTapUp: (_) {
          setState(() {
            _isPressed = false;
          });
          widget.onPressed();
        },
        onTapCancel: () => setState(() {
          _isPressed = false;
        }),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: EzClipSmoothRect(
            radius: EzSmoothBorderRadius(
              cornerRadius: EzConstLayout.borderRadiusSmall,
              cornerSmoothing: EzConstLayout.cornerSmoothing,
            ),
            child: Container(
              width: iconSize,
              height: iconSize,
              color: _isPressed
                  ? colorScheme.primary.withOpacity(0.2)
                  : _isHovered
                  ? colorScheme.primary.withOpacity(0.1)
                  : Colors.transparent,
              child: Icon(
                widget.icon,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
