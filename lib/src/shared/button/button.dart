import 'package:flutter/material.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/constants/const_value.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';

/// Button used in the app.
class Button extends StatelessWidget {
  /// Button used in the app.
  const Button({
    required this.text,
    super.key,
    this.isLoading = false,
    this.isTonal = false,
    this.onPressed,
    this.isFullWidth = true,
    this.isEnabled = true,
  });

  /// Text to display on the button.
  final String text;

  /// Whether the button is loading.
  final bool isLoading;

  /// Callback to be called when the button is pressed.
  final VoidCallback? onPressed;

  /// Whether the button is full width.
  final bool isFullWidth;

  /// Whether the button has tonal color.
  final bool isTonal;

  /// Whether the button is enabled.
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    final onPressed = isEnabled ? this.onPressed : null;
    final child = AnimatedSize(
      duration: ConstValue.animationDuration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              text,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (isLoading) const _Loading(),
        ].withSpaceBetween(
          width: ConstLayout.spacerSmall,
        ),
      ),
    );

    return Container(
      width: isFullWidth ? double.infinity : null,
      constraints: const BoxConstraints(
        maxWidth: ConstLayout.maxGameWidthSize,
      ),
      child: isTonal
          ? FilledButton.tonal(
              onPressed: onPressed,
              child: child,
            )
          : FilledButton(
              onPressed: onPressed,
              child: child,
            ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ConstValue.dp16,
      width: ConstValue.dp16,
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.onSurface,
          strokeWidth: 1.5,
        ),
      ),
    );
  }
}
