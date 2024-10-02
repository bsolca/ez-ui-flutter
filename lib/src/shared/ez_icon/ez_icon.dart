import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';

/// EzIcon from HeroIcons
class EzIcon extends StatelessWidget {
  /// EzIcon from HeroIcons
  const EzIcon(
    this.icon, {
    super.key,
    required this.color,
    required this.size,
  });

  /// EzIcon from HeroIcons.
  final EzIcons icon;

  /// Color of the icon.
  final Color color;

  /// Size of the icon.
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon.path,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }
}