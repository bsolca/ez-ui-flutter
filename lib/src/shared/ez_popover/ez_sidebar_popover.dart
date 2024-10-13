import 'package:flutter/material.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// Represents a popover with a list of items.
class EzPopover extends StatelessWidget {
  /// Creates a popover.
  const EzPopover({
    super.key,
    required this.child,
    required this.controller,
    required this.items,
    required this.offset,
    this.width,
    this.padding = const EdgeInsets.all(8),
  });

  /// Widget to tap to open the popover.
  final Widget child;

  /// Controller of the popover.
  final MenuController controller;

  /// Items to display in the popover.
  final List<Widget> items;

  /// Offset of the popover.
  final Offset offset;

  /// Width of the popover.
  final double? width;

  /// Menu style padding
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return MenuAnchor(
      builder: (context, controller, _) {
        return child;
      },
      controller: controller,
      alignmentOffset: offset,
      style: MenuStyle(
        padding: WidgetStateProperty.all(padding),
        elevation: WidgetStateProperty.all(0),
        backgroundColor: WidgetStateProperty.all(
          colorScheme.onPrimary,
        ),
        shape: WidgetStateProperty.all(
          SmoothRectangleBorder(
            side: BorderSide(
              color: colorScheme.onPrimary,
            ),
            borderRadius: const SmoothBorderRadius.all(
              SmoothRadius(
                cornerRadius: 12,
                cornerSmoothing: 1,
              ),
            ),
          ),
        ),
      ),
      menuChildren: [
        // MenuStyle.minWidth in MenuAnchor doesn't work, this is a workaround.
        SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: items,
          ),
        ),
      ],
    );
  }
}