import 'package:flutter/material.dart';

/// Text widget.
class AvatarName extends StatelessWidget {
  /// Text widget.
  const AvatarName({
    super.key,
    required this.name,
  });

  /// Name or pseudo.
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
