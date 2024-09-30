import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/shared/avatar_image/avatar_image.dart';
import 'package:impostor/src/shared/avatar_name/avatar_name.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';

/// Image and pseudo of the player.
class Avatar extends ConsumerWidget {
  /// Image and pseudo of the player.
  const Avatar({
    super.key,
    required this.image,
    required this.name,
  });

  /// Image of the player.
  final String image;

  /// Pseudo of the player.
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        AvatarImage(image: image),
        Flexible(child: AvatarName(name: name)),
      ].withSpaceBetween(width: ConstLayout.spacerSmall),
    );
  }
}
