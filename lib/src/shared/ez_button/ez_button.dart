import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/shared/ez_disable/ez_disable.dart';
import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:flutter/material.dart';

class EzButton extends StatelessWidget {
  const EzButton({
    super.key,
    this.type = EzButtonType.regular,
    required this.onPressed,
    required this.text,
    this.prefixWidget,
    this.suffixWidget,
    this.textColor,
    this.isLoading = false,
    this.borderRadius,
  });

  final VoidCallback? onPressed;
  final String text;
  final Color? textColor;
  final EzButtonType type;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final bool isLoading;
  final EzSmoothBorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final prefixWidget = this.prefixWidget;
    final suffixWidget = this.suffixWidget;

    return EzDisable.main(
      disabled: isLoading || onPressed == null,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: _buildShape(context).copyWith(
          borderRadius: borderRadius ?? _buildShape(context).borderRadius,
        ),
        padding: _getPadding(),
        hoverColor: _getHoverColor(context),
        splashColor: Colors.transparent,
        fillColor: _getFillColor(context),
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        elevation: 0,
        highlightColor: Colors.transparent,
        mouseCursor: _getMouseCursor(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixWidget != null) prefixWidget,
            Flexible(
              child: Text(
                text,
                style: _getTextStyle(context),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            if (isLoading)
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    textColor ??
                        _getDefaultTextColor(Theme.of(context).colorScheme),
                  ),
                ),
              ),
            if (suffixWidget != null && !isLoading) suffixWidget,
          ].withSpaceBetween(
            width: EzConstLayout.spacerSmall,
          ),
        ),
      ),
    );
  }

  EzSmoothRectangleBorder _buildShape(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return EzSmoothRectangleBorder(
      side: _getBorderSide(colorScheme),
      borderRadius: EzSmoothBorderRadius(
        cornerRadius: EzConstLayout.borderRadiusSmall,
        cornerSmoothing: EzConstLayout.cornerSmoothing,
      ),
    );
  }

  BorderSide _getBorderSide(ColorScheme colorScheme) {
    switch (type) {
      case EzButtonType.outlined:
        return BorderSide(
          color: colorScheme.outline.withOpacity(0.2),
        );
      case EzButtonType.link:
        return BorderSide.none;
      case EzButtonType.regular:
        return BorderSide.none;
    }
  }

  EdgeInsets _getPadding() {
    return const EdgeInsets.symmetric(
      vertical: EzConstValue.dp8,
      horizontal: EzConstValue.dp16,
    );
  }

  Color _getHoverColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    switch (type) {
      case EzButtonType.link:
        return colorScheme.secondaryContainer;
      case EzButtonType.outlined:
        return colorScheme.surfaceContainerLow;
      case EzButtonType.regular:
        return colorScheme.onSurface;
    }
  }

  Color _getFillColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    switch (type) {
      case EzButtonType.link:
      case EzButtonType.outlined:
        return Colors.transparent;
      case EzButtonType.regular:
        return colorScheme.onSurfaceVariant.withOpacity(
          onPressed == null ? 0.3 : 1,
        );
    }
  }

  MouseCursor _getMouseCursor() {
    return (onPressed == null || isLoading)
        ? SystemMouseCursors.forbidden
        : SystemMouseCursors.click;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: textColor ?? _getDefaultTextColor(colorScheme),
          fontWeight: FontWeight.bold,
        );
  }

  Color _getDefaultTextColor(ColorScheme colorScheme) {
    switch (type) {
      case EzButtonType.link:
        return colorScheme.onSurfaceVariant;
      case EzButtonType.outlined:
        return colorScheme.onSurface.withOpacity(onPressed == null ? 0.3 : 1);
      case EzButtonType.regular:
        return colorScheme.onInverseSurface;
    }
  }
}
