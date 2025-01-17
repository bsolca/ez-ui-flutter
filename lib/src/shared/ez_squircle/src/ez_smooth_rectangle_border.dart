import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Defines the alignment of the border relative to the edge of a shape.
enum BorderAlign {
  /// Aligns the border inside the edge of the shape.
  inside,

  /// Aligns the border at the center of the edge of the shape.
  center,

  /// Aligns the border outside the edge of the shape.
  outside,
}

/// A rectangular border with smooth, customizable corners.
///
/// The border's alignment can be adjusted via [BorderAlign], and the corner
/// radius can be controlled with [EzSmoothBorderRadius].
class EzSmoothRectangleBorder extends OutlinedBorder {
  /// A rectangular border with smooth, customizable corners.
  const EzSmoothRectangleBorder({
    super.side,
    this.borderRadius = EzSmoothBorderRadius.basic,
    this.borderAlign = BorderAlign.inside,
  });

  /// The radius for each corner of the rectangle.
  ///
  /// Negative radius values are clamped to 0.0 by [getInnerPath] and
  /// [getOuterPath].
  final EzSmoothBorderRadius borderRadius;

  /// Defines how the border is aligned relative to the shape's edge.
  final BorderAlign borderAlign;

  @override
  EdgeInsetsGeometry get dimensions {
    switch (borderAlign) {
      case BorderAlign.inside:
        return EdgeInsets.all(side.width);
      case BorderAlign.center:
        return EdgeInsets.all(side.width / 2);
      case BorderAlign.outside:
        return EdgeInsets.zero;
    }
  }

  @override
  ShapeBorder scale(double t) {
    return EzSmoothRectangleBorder(
      side: side.scale(t),
      borderRadius: borderRadius * t,
    );
  }

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is EzSmoothRectangleBorder) {
      return EzSmoothRectangleBorder(
        side: BorderSide.lerp(a.side, side, t),
        borderRadius: EzSmoothBorderRadius.lerp(
          a.borderRadius,
          borderRadius,
          t,
        )!,
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is EzSmoothRectangleBorder) {
      return EzSmoothRectangleBorder(
        side: BorderSide.lerp(side, b.side, t),
        borderRadius: EzSmoothBorderRadius.lerp(
          borderRadius,
          b.borderRadius,
          t,
        )!,
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    final innerRect = () {
      switch (borderAlign) {
        case BorderAlign.inside:
          return rect.deflate(side.width);
        case BorderAlign.center:
          return rect.deflate(side.width / 2);
        case BorderAlign.outside:
          return rect;
      }
    }();
    final radius = () {
      switch (borderAlign) {
        case BorderAlign.inside:
          return borderRadius -
              EzSmoothBorderRadius.all(
                EzSmoothRadius(
                  cornerRadius: side.width,
                  cornerSmoothing: 1,
                ),
              );
        case BorderAlign.center:
          return borderRadius -
              EzSmoothBorderRadius.all(
                EzSmoothRadius(
                  cornerRadius: side.width / 2,
                  cornerSmoothing: 1,
                ),
              );
        case BorderAlign.outside:
          return borderRadius;
      }
    }();

    if ([radius.bottomLeft, radius.bottomRight, radius.topLeft, radius.topRight]
        .every((x) => x.cornerSmoothing == 0.0)) {
      return Path()..addRRect(radius.resolve(textDirection).toRRect(innerRect));
    }

    return radius.toPath(innerRect);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(rect, borderRadius, textDirection: textDirection);
  }

  Path _getPath(
    Rect rect,
    EzSmoothBorderRadius radius, {
    TextDirection? textDirection,
  }) {
    if ([radius.bottomLeft, radius.bottomRight, radius.topLeft, radius.topRight]
        .every((x) => x.cornerSmoothing == 0.0)) {
      return Path()..addRRect(radius.resolve(textDirection).toRRect(rect));
    }

    return radius.toPath(rect);
  }

  @override
  EzSmoothRectangleBorder copyWith({
    BorderSide? side,
    EzSmoothBorderRadius? borderRadius,
    BorderAlign? borderAlign,
  }) {
    return EzSmoothRectangleBorder(
      side: side ?? this.side,
      borderRadius: borderRadius ?? this.borderRadius,
      borderAlign: borderAlign ?? this.borderAlign,
    );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    if (rect.isEmpty) return;
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        final adjustedRect = () {
          switch (borderAlign) {
            case BorderAlign.inside:
              return rect.deflate(side.width / 2);
            case BorderAlign.center:
              return rect;
            case BorderAlign.outside:
              return rect.inflate(side.width / 2);
          }
        }();
        final adjustedBorderRadius = () {
          switch (borderAlign) {
            case BorderAlign.inside:
              return borderRadius -
                  EzSmoothBorderRadius.all(
                    EzSmoothRadius(
                      cornerRadius: side.width / 2,
                      cornerSmoothing: 1,
                    ),
                  );
            case BorderAlign.center:
              return borderRadius;
            case BorderAlign.outside:
              return borderRadius +
                  EzSmoothBorderRadius.all(
                    EzSmoothRadius(
                      cornerRadius: side.width / 2,
                      cornerSmoothing: 1,
                    ),
                  );
          }
        }();

        final outerPath = _getPath(
          adjustedRect,
          adjustedBorderRadius,
          textDirection: textDirection,
        );

        canvas.drawPath(
          outerPath,
          side.toPaint(),
        );
    }
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is EzSmoothRectangleBorder &&
        other.side == side &&
        other.borderRadius == borderRadius &&
        other.borderAlign == borderAlign;
  }

  @override
  int get hashCode => Object.hash(side, borderRadius, borderAlign);

  @override
  String toString() {
    return '${objectRuntimeType(this, 'SmoothRectangleBorder')}'
        '($side, $borderRadius, $borderAlign)';
  }
}
