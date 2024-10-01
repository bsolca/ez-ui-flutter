import 'package:flutter/widgets.dart';
import 'package:impostor/src/shared/squircle/src/smooth_border_radius.dart';
import 'package:impostor/src/shared/squircle/src/smooth_rectangle_border.dart';

/// A widget that clips its child using a smooth rectangular border.
///
/// [ClipSmoothRect] clips a widget using a [SmoothRectangleBorder] with a
/// customizable [SmoothBorderRadius] for the corners. This widget utilizes
/// [ClipPath] to perform the clipping operation.
///
/// ### Parameters:
/// - [child]: The widget to be clipped by the [SmoothRectangleBorder].
/// - [radius]: Defines the corner radius of the border using
///   [SmoothBorderRadius]. Default is [SmoothBorderRadius.zero], meaning
///   no rounding.
/// - [clipBehavior]: Determines how the widget should be clipped. The default
///   value is [Clip.antiAlias], which applies anti-aliasing for smoother
///   edges.
///
/// ### Example:
/// ```dart
/// ClipSmoothRect(
///   radius: SmoothBorderRadius.all(20),  // Define smooth corners
///   child: YourWidgetHere(),  // Widget to be clipped
/// )
/// ```
///
/// This widget is useful when you want smooth, rounded corners for rectangular
/// widgets with control over the radius using the smooth squircle shape.
class ClipSmoothRect extends StatelessWidget {
  /// Creates a [ClipSmoothRect] widget.
  ///
  /// Requires the [child] to be clipped and allows customization for [radius]
  /// and [clipBehavior].
  const ClipSmoothRect({
    super.key,
    required this.child,
    this.radius = SmoothBorderRadius.zero,
    this.clipBehavior = Clip.antiAlias,
  });

  /// Border radius of the clipped rectangle, specified as [SmoothBorderRadius].
  final SmoothBorderRadius radius;

  /// Defines how the widget should be clipped. Default is [Clip.antiAlias].
  final Clip clipBehavior;

  /// The widget to be clipped by the [SmoothRectangleBorder].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath.shape(
      clipBehavior: clipBehavior,
      shape: SmoothRectangleBorder(
        borderRadius: radius,
      ),
      child: child,
    );
  }
}
