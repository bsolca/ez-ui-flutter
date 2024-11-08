import 'package:ez_fit_app/src/shared/ez_squircle/src/ez_smooth_border_radius.dart';
import 'package:ez_fit_app/src/shared/ez_squircle/src/ez_smooth_rectangle_border.dart';
import 'package:flutter/widgets.dart';

/// A widget that clips its child using a smooth rectangular border.
///
/// [EzClipSmoothRect] clips a widget using a [EzSmoothRectangleBorder] with a
/// customizable [EzSmoothBorderRadius] for the corners. This widget utilizes
/// [ClipPath] to perform the clipping operation.
///
/// ### Parameters:
/// - [child]: The widget to be clipped by the [EzSmoothRectangleBorder].
/// - [radius]: Defines the corner radius of the border using
///   [EzSmoothBorderRadius]. Default is [EzSmoothBorderRadius.basic], meaning
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
class EzClipSmoothRect extends StatelessWidget {
  /// Creates a [EzClipSmoothRect] widget.
  ///
  /// Requires the [child] to be clipped and allows customization for [radius]
  /// and [clipBehavior].
  const EzClipSmoothRect({
    super.key,
    required this.child,
    this.radius = EzSmoothBorderRadius.basic,
    this.clipBehavior = Clip.antiAlias,
  });

  /// Border radius of the clipped rectangle, specified as [EzSmoothBorderRadius].
  final EzSmoothBorderRadius radius;

  /// Defines how the widget should be clipped. Default is [Clip.antiAlias].
  final Clip clipBehavior;

  /// The widget to be clipped by the [EzSmoothRectangleBorder].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath.shape(
      clipBehavior: clipBehavior,
      shape: EzSmoothRectangleBorder(
        borderRadius: radius,
      ),
      child: child,
    );
  }
}
