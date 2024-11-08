import 'package:ez_fit_app/src/shared/ez_squircle/src/ez_path_smooth_corners.dart';
import 'package:ez_fit_app/src/shared/ez_squircle/src/ez_processed_smooth_radius.dart';
import 'package:ez_fit_app/src/shared/ez_squircle/src/ez_smooth_radius.dart';
import 'package:flutter/rendering.dart';

/// A border radius with smooth, customizable corners.
///
/// [EzSmoothBorderRadius] allows you to apply smooth radius values for each
/// corner of a rectangle, enabling more natural curves and transitions.
class EzSmoothBorderRadius extends BorderRadius {
  /// Creates a [EzSmoothBorderRadius] with the same [cornerRadius] and
  /// [cornerSmoothing] for all corners.
  EzSmoothBorderRadius({
    required double cornerRadius,
    double cornerSmoothing = 0,
  }) : this.only(
          topLeft: EzSmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          topRight: EzSmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomLeft: EzSmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
          bottomRight: EzSmoothRadius(
            cornerRadius: cornerRadius,
            cornerSmoothing: cornerSmoothing,
          ),
        );

  /// Creates a [EzSmoothBorderRadius] where all corners use the same [radius].
  const EzSmoothBorderRadius.all(EzSmoothRadius radius)
      : this.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a vertically symmetric [EzSmoothBorderRadius].
  ///
  /// The [top] and [bottom] radii are applied to both the left and right
  /// sides of the respective vertical edges.
  const EzSmoothBorderRadius.vertical({
    EzSmoothRadius top = EzSmoothRadius.basic,
    EzSmoothRadius bottom = EzSmoothRadius.basic,
  }) : this.only(
          topLeft: top,
          topRight: top,
          bottomLeft: bottom,
          bottomRight: bottom,
        );

  /// Creates a horizontally symmetric [EzSmoothBorderRadius].
  ///
  /// The [left] and [right] radii are applied to both the top and bottom
  /// sides of the respective horizontal edges.
  const EzSmoothBorderRadius.horizontal({
    EzSmoothRadius left = EzSmoothRadius.basic,
    EzSmoothRadius right = EzSmoothRadius.basic,
  }) : this.only(
          topLeft: left,
          topRight: right,
          bottomLeft: left,
          bottomRight: right,
        );

  /// Creates a [EzSmoothBorderRadius] with individually specified corners.
  ///
  /// This constructor allows for different [EzSmoothRadius] values for each
  /// corner.
  const EzSmoothBorderRadius.only({
    EzSmoothRadius topLeft = EzSmoothRadius.basic,
    EzSmoothRadius topRight = EzSmoothRadius.basic,
    EzSmoothRadius bottomLeft = EzSmoothRadius.basic,
    EzSmoothRadius bottomRight = EzSmoothRadius.basic,
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

  /// Returns a copy of this [EzSmoothBorderRadius] with updated values.
  ///
  /// You can replace individual corner radii with new values.
  @override
  EzSmoothBorderRadius copyWith({
    Radius? topLeft,
    Radius? topRight,
    Radius? bottomLeft,
    Radius? bottomRight,
  }) {
    return EzSmoothBorderRadius.only(
      topLeft: topLeft is EzSmoothRadius ? topLeft : this.topLeft,
      topRight: topRight is EzSmoothRadius ? topRight : this.topRight,
      bottomLeft: bottomLeft is EzSmoothRadius ? bottomLeft : this.bottomLeft,
      bottomRight: bottomRight is EzSmoothRadius ? bottomRight : this.bottomRight,
    );
  }


  /// A border radius with zero radii for all corners.
  static const EzSmoothBorderRadius basic =
      EzSmoothBorderRadius.all(EzSmoothRadius.basic);

  @override
  EzSmoothRadius get topLeft => _topLeft;
  final EzSmoothRadius _topLeft;

  @override
  EzSmoothRadius get topRight => _topRight;
  final EzSmoothRadius _topRight;

  @override
  EzSmoothRadius get bottomLeft => _bottomLeft;
  final EzSmoothRadius _bottomLeft;

  @override
  EzSmoothRadius get bottomRight => _bottomRight;
  final EzSmoothRadius _bottomRight;

  /// Generates a [Path] for the rectangle with smooth corners.
  ///
  /// This method calculates the smooth corners based on the provided
  /// [Rect] and builds the path accordingly.
  Path toPath(Rect rect) {
    final width = rect.width;
    final height = rect.height;

    final result = Path();

    /// Calculate only if the values differ
    final processedTopLeft = EzProcessedSmoothRadius(
      topLeft,
      width: width,
      height: height,
    );
    final processedBottomLeft = topLeft == bottomLeft
        ? processedTopLeft
        : EzProcessedSmoothRadius(
            bottomLeft,
            width: width,
            height: height,
          );
    final processedBottomRight = bottomLeft == bottomRight
        ? processedBottomLeft
        : EzProcessedSmoothRadius(
            bottomRight,
            width: width,
            height: height,
          );
    final processedTopRight = topRight == bottomRight
        ? processedBottomRight
        : EzProcessedSmoothRadius(
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
    if (other is EzSmoothBorderRadius) return this - other;
    return super.subtract(other);
  }

  @override
  BorderRadiusGeometry add(BorderRadiusGeometry other) {
    if (other is EzSmoothBorderRadius) return this + other;
    return super.add(other);
  }

  /// Subtracts two [EzSmoothBorderRadius] objects.
  ///
  /// Returns the result of subtracting the radii of the corners.
  @override
  EzSmoothBorderRadius operator -(BorderRadius other) {
    if (other is EzSmoothBorderRadius) {
      return EzSmoothBorderRadius.only(
        topLeft: (topLeft - other.topLeft) as EzSmoothRadius,
        topRight: (topRight - other.topRight) as EzSmoothRadius,
        bottomLeft: (bottomLeft - other.bottomLeft) as EzSmoothRadius,
        bottomRight: (bottomRight - other.bottomRight) as EzSmoothRadius,
      );
    }
    return this;
  }

  /// Adds two [EzSmoothBorderRadius] objects.
  ///
  /// Returns the result of adding the radii of the corners.
  @override
  EzSmoothBorderRadius operator +(BorderRadius other) {
    if (other is EzSmoothBorderRadius) {
      return EzSmoothBorderRadius.only(
        topLeft: (topLeft + other.topLeft) as EzSmoothRadius,
        topRight: (topRight + other.topRight) as EzSmoothRadius,
        bottomLeft: (bottomLeft + other.bottomLeft) as EzSmoothRadius,
        bottomRight: (bottomRight + other.bottomRight) as EzSmoothRadius,
      );
    }
    return this;
  }

  /// Negates the corner radii.
  ///
  /// Returns the [EzSmoothBorderRadius] with each corner negated.
  @override
  EzSmoothBorderRadius operator -() {
    return EzSmoothBorderRadius.only(
      topLeft: (-topLeft) as EzSmoothRadius,
      topRight: (-topRight) as EzSmoothRadius,
      bottomLeft: (-bottomLeft) as EzSmoothRadius,
      bottomRight: (-bottomRight) as EzSmoothRadius,
    );
  }

  /// Scales each corner of the [EzSmoothBorderRadius] by a factor.
  @override
  EzSmoothBorderRadius operator *(double other) {
    return EzSmoothBorderRadius.only(
      topLeft: topLeft * other,
      topRight: topRight * other,
      bottomLeft: bottomLeft * other,
      bottomRight: bottomRight * other,
    );
  }

  /// Divides each corner of the [EzSmoothBorderRadius] by a factor.
  @override
  EzSmoothBorderRadius operator /(double other) {
    return EzSmoothBorderRadius.only(
      topLeft: topLeft / other,
      topRight: topRight / other,
      bottomLeft: bottomLeft / other,
      bottomRight: bottomRight / other,
    );
  }

  /// Linearly interpolate between two [EzSmoothBorderRadius] values.
  ///
  /// If either value is null, this function interpolates from zero.
  static EzSmoothBorderRadius? lerp(
    EzSmoothBorderRadius? a,
    EzSmoothBorderRadius? b,
    double t,
  ) {
    final tmpA = a;
    final tmpB = b;
    if (tmpA == null && b == null) return null;
    if (tmpA == null) return b! * t;
    if (tmpB == null) return tmpA * (1.0 - t);

    return EzSmoothBorderRadius.only(
      topLeft: EzSmoothRadius.lerp(tmpA.topLeft, tmpB.topLeft, t),
      topRight: EzSmoothRadius.lerp(tmpA.topRight, tmpB.topRight, t),
      bottomLeft: EzSmoothRadius.lerp(tmpA.bottomLeft, tmpB.bottomLeft, t),
      bottomRight: EzSmoothRadius.lerp(tmpA.bottomRight, tmpB.bottomRight, t),
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
