import 'package:flutter/material.dart';
import 'package:impostor/src/shared/header/header.dart';

/// Use under a [Header] to display a sub title.
class SubHeader extends StatelessWidget {
  /// Use under a [Header] to display a sub title.
  const SubHeader(
    this.text, {
    super.key,
    this.fit = BoxFit.scaleDown,
  });

  /// Txt to display.
  final String text;

  /// How to inscribe the child into the space allocated during layout.
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
    );
  }
}
