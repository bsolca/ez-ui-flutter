import 'package:flutter/material.dart';

/// Pseudo of the player.
class AvatarName extends StatelessWidget {
  /// Pseudo of the player.
  const AvatarName({
    super.key,
    required this.name,
  });

  /// Pseudo of the player.
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
