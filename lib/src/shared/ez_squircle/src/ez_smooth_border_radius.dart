import 'package:flutter/rendering.dart';

import 'package:impostor/src/shared/ez_squircle/src/ez_path_smooth_corners.dart';
import 'package:impostor/src/shared/ez_squircle/src/ez_processed_smooth_radius.dart';
import 'package:impostor/src/shared/ez_squircle/src/ez_smooth_radius.dart';

/// A border radius with smooth, customizable corners.
///
/// [SmoothBorderRadius] allows you to apply smooth radius values for each
/// corner of a rectangle, enabling more natural curves and transitions.
class SmoothBorderRadius extends BorderRadius {
  /// Creates a [SmoothBorderRadius] with the same [cornerRadius] and
  /// [cornerSmoothing] for all corners.
  SmoothBorderRadius({
    required double cornerRadius,
    double cornerSmoothing = 0,
  }) : this.only(
          topLeft: SmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          topRight: SmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomLeft: SmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomRight: SmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
        );

  /// Creates a [SmoothBorderRadius] where all corners use the same [radius].
  const SmoothBorderRadius.all(SmoothRadius radius)
      : this.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a vertically symmetric [SmoothBorderRadius].
  ///
  /// The [top] and [bottom] radii are applied to both the left and right
  /// sides of the respective vertical edges.
  const SmoothBorderRadius.vertical({
    SmoothRadius top = SmoothRadius.zero,
    SmoothRadius bottom = SmoothRadius.zero,
  }) : this.only(
          topLeft: top,
          topRight: top,
          bottomLeft: bottom,
          bottomRight: bottom,
        );

  /// Creates a horizontally symmetric [SmoothBorderRadius].
  ///
  /// The [left] and [right] radii are applied to both the top and bottom
  /// sides of the respective horizontal edges.
  const SmoothBorderRadius.horizontal({
    SmoothRadius left = SmoothRadius.zero,
    SmoothRadius right = SmoothRadius.zero,
  }) : this.only(
          topLeft: left,
          topRight: right,
          bottomLeft: left,
          bottomRight: right,
        );

  /// Creates a [SmoothBorderRadius] with individually specified corners.
  ///
  /// This constructor allows for different [SmoothRadius] values for each
  /// corner.
  const SmoothBorderRadius.only({
    SmoothRadius topLeft = SmoothRadius.zero,
    SmoothRadius topRight = SmoothRadius.zero,
    SmoothRadius bottomLeft = SmoothRadius.zero,
    SmoothRadius bottomRight = SmoothRadius.zero,
  }) : _topLeft = topLeft,
        _topRight = topRight,
        _bottomLeft = bottomLeft,
        _bottomRight = bottomRight,
        super.only(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
      );

  /// Returns a copy of this [SmoothBorderRadius] with updated values.
  ///
  /// You can replace individual corner radii with new values.
  @override
  SmoothBorderRadius copyWith({
    Radius? topLeft,
    Radius? topRight,
    Radius? bottomLeft,
    Radius? bottomRight,
  }) {
    return SmoothBorderRadius.only(
      topLeft: topLeft is SmoothRadius ? topLeft : this.topLeft,
      topRight: topRight is SmoothRadius ? topRight : this.topRight,
      bottomLeft: bottomLeft is SmoothRadius ? bottomLeft : this.bottomLeft,
      bottomRight: bottomRight is SmoothRadius ? bottomRight : this.bottomRight,
    );
  }


  /// A border radius with zero radii for all corners.
  static const SmoothBorderRadius zero =
      SmoothBorderRadius.all(SmoothRadius.zero);

  @override
  SmoothRadius get topLeft => _topLeft;
  final SmoothRadius _topLeft;

  @override
  SmoothRadius get topRight => _topRight;
  final SmoothRadius _topRight;

  @override
  SmoothRadius get bottomLeft => _bottomLeft;
  final SmoothRadius _bottomLeft;

  @override
  SmoothRadius get bottomRight => _bottomRight;
  final SmoothRadius _bottomRight;

  /// Generates a [Path] for the rectangle with smooth corners.
  ///
  /// This method calculates the smooth corners based on the provided
  /// [Rect] and builds the path accordingly.
  Path toPath(Rect rect) {
    final width = rect.width;
    final height = rect.height;

    final result = Path();

    /// Calculate only if the values differ
    final processedTopLeft = ProcessedSmoothRadius(
      topLeft,
      width: width,
      height: height,
    );
    final processedBottomLeft = topLeft == bottomLeft
        ? processedTopLeft
        : ProcessedSmoothRadius(
            bottomLeft,
            width: width,
            height: height,
          );
    final processedBottomRight = bottomLeft == bottomRight
        ? processedBottomLeft
        : ProcessedSmoothRadius(
            bottomRight,
            width: width,
            height: height,
          );
    final processedTopRight = topRight == bottomRight
        ? processedBottomRight
        : ProcessedSmoothRadius(
            topRight,
            width: width,
            height: height,
          );

    result
      ..addSmoothTopRight(processedTopRight, rect)
      ..addSmoothBottomRight(processedBottomRight, rect)
      ..addSmoothBottomLeft(processedBottomLeft, rect)
      ..addSmoothTopLeft(processedTopLeft, rect);

    return result.transform(
      Matrix4.translationValues(rect.left, rect.top, 0).storage,
    );
  }

  @override
  BorderRadiusGeometry subtract(BorderRadiusGeometry other) {
    if (other is SmoothBorderRadius) return this - other;
    return super.subtract(other);
  }

  @override
  BorderRadiusGeometry add(BorderRadiusGeometry other) {
    if (other is SmoothBorderRadius) return this + other;
    return super.add(other);
  }

  /// Subtracts two [SmoothBorderRadius] objects.
  ///
  /// Returns the result of subtracting the radii of the corners.
  @override
  SmoothBorderRadius operator -(BorderRadius other) {
    if (other is SmoothBorderRadius) {
      return SmoothBorderRadius.only(
        topLeft: (topLeft - other.topLeft) as SmoothRadius,
        topRight: (topRight - other.topRight) as SmoothRadius,
        bottomLeft: (bottomLeft - other.bottomLeft) as SmoothRadius,
        bottomRight: (bottomRight - other.bottomRight) as SmoothRadius,
      );
    }
    return this;
  }

  /// Adds two [SmoothBorderRadius] objects.
  ///
  /// Returns the result of adding the radii of the corners.
  @override
  SmoothBorderRadius operator +(BorderRadius other) {
    if (other is SmoothBorderRadius) {
      return SmoothBorderRadius.only(
        topLeft: (topLeft + other.topLeft) as SmoothRadius,
        topRight: (topRight + other.topRight) as SmoothRadius,
        bottomLeft: (bottomLeft + other.bottomLeft) as SmoothRadius,
        bottomRight: (bottomRight + other.bottomRight) as SmoothRadius,
      );
    }
    return this;
  }

  /// Negates the corner radii.
  ///
  /// Returns the [SmoothBorderRadius] with each corner negated.
  @override
  SmoothBorderRadius operator -() {
    return SmoothBorderRadius.only(
      topLeft: (-topLeft) as SmoothRadius,
      topRight: (-topRight) as SmoothRadius,
      bottomLeft: (-bottomLeft) as SmoothRadius,
      bottomRight: (-bottomRight) as SmoothRadius,
    );
  }

  /// Scales each corner of the [SmoothBorderRadius] by a factor.
  @override
  SmoothBorderRadius operator *(double other) {
    return SmoothBorderRadius.only(
      topLeft: topLeft * other,
      topRight: topRight * other,
      bottomLeft: bottomLeft * other,
      bottomRight: bottomRight * other,
    );
  }

  /// Divides each corner of the [SmoothBorderRadius] by a factor.
  @override
  SmoothBorderRadius operator /(double other) {
    return SmoothBorderRadius.only(
      topLeft: topLeft / other,
      topRight: topRight / other,
      bottomLeft: bottomLeft / other,
      bottomRight: bottomRight / other,
    );
  }

  /// Linearly interpolate between two [SmoothBorderRadius] values.
  ///
  /// If either value is null, this function interpolates from zero.
  static SmoothBorderRadius? lerp(
    SmoothBorderRadius? a,
    SmoothBorderRadius? b,
    double t,
  ) {
    final tmpA = a;
    final tmpB = b;
    if (tmpA == null && b == null) return null;
    if (tmpA == null) return b! * t;
    if (tmpB == null) return tmpA * (1.0 - t);

    return SmoothBorderRadius.only(
      topLeft: SmoothRadius.lerp(tmpA.topLeft, tmpB.topLeft, t),
      topRight: SmoothRadius.lerp(tmpA.topRight, tmpB.topRight, t),
      bottomLeft: SmoothRadius.lerp(tmpA.bottomLeft, tmpB.bottomLeft, t),
      bottomRight: SmoothRadius.lerp(tmpA.bottomRight, tmpB.bottomRight, t),
    );
  }

  @override
  String toString() {
    if (topLeft == topRight &&
        topLeft == bottomRight &&
        topLeft == bottomLeft) {
      final radius = topLeft.toString();
      return 'SmoothBorderRadius${radius.substring(12)}';
    }

    return 'SmoothBorderRadius('
        'topLeft: $topLeft, '
        'topRight: $topRight, '
        'bottomLeft: $bottomLeft, '
        'bottomRight: $bottomRight)';
  }
}
