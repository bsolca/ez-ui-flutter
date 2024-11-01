import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:flutter/widgets.dart';

/// Image widget with smooth corners.
class EzImage extends StatelessWidget {
  /// Creates an `EzImage` widget with smooth corners.
  const EzImage(
    this.imagePath, {
    super.key,
    this.width,
    this.height,
    this.borderRadius = const SmoothBorderRadius.all(
      SmoothRadius(cornerRadius: 20, cornerSmoothing: 0.4),
    ),
  });

  /// Path from the assets folder
  final String imagePath;

  /// Width of the image
  final double? width;

  /// Height of the image
  final double? height;

  /// Border radius of the image
  final SmoothBorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipSmoothRect(
      radius: borderRadius,
      child: Image.asset(
        imagePath,
        alignment: const Alignment(0, -0.5),
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
