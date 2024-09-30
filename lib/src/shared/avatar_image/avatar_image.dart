import 'package:flutter/material.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/responsive/domain/responsive_force.dart';
import 'package:impostor/src/utils/responsive/layout_size_enum.dart';
import 'package:impostor/src/utils/responsive/presentation/responsive_layout.dart';

/// Image of the player.
class AvatarImage extends StatelessWidget implements ResponsiveForce {
  /// Image of the player.
  const AvatarImage({
    super.key,
    required this.image,
    this.forceLayoutSize,
    this.avatarSize,
  });

  /// Image of the player.
  final String image;

  @override
  final LayoutSize? forceLayoutSize;

  /// Force avatar size regardless of the layout size.
  final double? avatarSize;

  @override
  Widget build(BuildContext context) {
    final avatarSize = this.avatarSize;
    final child = ClipRRect(
      borderRadius: BorderRadius.circular(ConstLayout.borderRadius),
      child: Image(
        image: AssetImage(image),
      ),
    );

    if (avatarSize != null) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: avatarSize,
          maxWidth: avatarSize,
        ),
        child: child,
      );
    }

    return ResponsiveLayout(
      forceLayoutSize: forceLayoutSize,
      medium: (child, __) => ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: ConstLayout.avatarMediumSize,
          maxWidth: ConstLayout.avatarMediumSize,
        ),
        child: child,
      ),
      compact: (child, __) {
        return ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: ConstLayout.avatarSmallSize,
            maxWidth: ConstLayout.avatarSmallSize,
          ),
          child: child,
        );
      },
      child: child,
    );
  }
}
