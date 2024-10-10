import 'package:flutter/material.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/constants/const_value.dart';

/// A customizable button that extends [RawMaterialButton] for ease of use.
class EzButton extends StatelessWidget {
  /// Creates an [EzButton] with customizable properties.
  const EzButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
  }) : outlined = false;

  /// Creates an outlined [EzButton] with customizable properties.
  const EzButton.outlined({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
  }) : outlined = true;

  /// The callback that gets called when the button is pressed.
  final VoidCallback? onPressed;

  /// Text displayed on the button.
  final String text;

  /// Optional text color.
  final Color? textColor;

  /// Whether the button is outlined.
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return RawMaterialButton(
      onPressed: onPressed,
      shape: SmoothRectangleBorder(
        side: outlined
            ? BorderSide(
                color: colorScheme.outline.withOpacity(0.2),
              )
            : BorderSide.none,
        borderRadius: SmoothBorderRadius(
          cornerRadius: ConstLayout.borderRadiusSmall,
          cornerSmoothing: ConstLayout.cornerSmoothing,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: ConstLayout.borderRadiusSmall,
        horizontal: ConstValue.dp32,
      ),
      hoverColor:
          outlined ? colorScheme.surfaceContainerLow : colorScheme.onSurface,
      splashColor: Colors.transparent,
      fillColor: (outlined
          ? Colors.transparent
          : colorScheme.onSurfaceVariant
              .withOpacity(onPressed == null ? 0.3 : 1)),
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      elevation: 0,
      highlightColor: Colors.transparent,
      mouseCursor: onPressed == null
          ? SystemMouseCursors.forbidden
          : SystemMouseCursors.click,
      child: Text(
        text,
        // red color
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: textColor ??
                  (outlined
                      ? colorScheme.onSurface
                          .withOpacity(onPressed == null ? 0.3 : 1)
                      : colorScheme.onInverseSurface),
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
