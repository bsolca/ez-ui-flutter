import 'dart:math' as math;
import 'dart:ui';

import 'package:ez_fit_app/src/shared/ez_squircle/src/ez_processed_smooth_radius.dart';

/// Extension for adding smooth corners to a [Path].
///
/// This extension provides methods to add smooth top-right, top-left,
/// bottom-right, and bottom-left corners to a [Path] using a
/// [EzProcessedSmoothRadius] for corner calculations.
extension PathSmoothCornersExtensions on Path {
  /// Adds a smooth top-right corner to the path.
  ///
  /// Uses [EzProcessedSmoothRadius] to calculate the curve and arc for the
  /// top-right corner of the rectangle defined by [rect].
  void addSmoothTopRight(EzProcessedSmoothRadius radius, Rect rect) {
    final width = rect.width;
    final height = rect.height;
    if (radius.radius.cornerRadius > 0) {
      final a = radius.a;
      final b = radius.b;
      final c = radius.c;
      final d = radius.d;
      final p = radius.p;
      this
        ..moveTo(
          math.max(width / 2, width - p),
          0,
        )
        ..cubicTo(
          width - (p - a),
          0,
          width - (p - a - b),
          0,
          width - (p - a - b - c),
          d,
        )
        ..relativeArcToPoint(
          Offset(
            radius.circularSectionLength,
            radius.circularSectionLength,
          ),
          radius: radius.radius,
        )
        ..cubicTo(
          width,
          p - a - b,
          width,
          p - a,
          width,
          math.min(height / 2, p),
        );
    } else {
      this
        ..moveTo(width / 2, 0)
        ..lineTo(width, 0)
        ..lineTo(width, height / 2);
    }
  }

  /// Adds a smooth bottom-right corner to the path.
  ///
  /// Uses [EzProcessedSmoothRadius] to calculate the curve and arc for the
  /// bottom-right corner of the rectangle defined by [rect].
  void addSmoothBottomRight(EzProcessedSmoothRadius radius, Rect rect) {
    final width = rect.width;
    final height = rect.height;
    if (radius.radius.cornerRadius > 0) {
      final a = radius.a;
      final b = radius.b;
      final c = radius.c;
      final d = radius.d;
      final p = radius.p;
      this
        ..lineTo(
          width,
          math.max(height / 2, height - p),
        )
        ..cubicTo(
          width,
          height - (p - a),
          width,
          height - (p - a - b),
          width - d,
          height - (p - a - b - c),
        )
        ..relativeArcToPoint(
          Offset(
            -radius.circularSectionLength,
            radius.circularSectionLength,
          ),
          radius: radius.radius,
        )
        ..cubicTo(
          width - (p - a - b),
          height,
          width - (p - a),
          height,
          math.max(width / 2, width - p),
          height,
        );
    } else {
      this..lineTo(width, height)..lineTo(width / 2, height);
    }
  }

  /// Adds a smooth bottom-left corner to the path.
  ///
  /// Uses [EzProcessedSmoothRadius] to calculate the curve and arc for the
  /// bottom-left corner of the rectangle defined by [rect].
  void addSmoothBottomLeft(EzProcessedSmoothRadius radius, Rect rect) {
    final width = rect.width;
    final height = rect.height;
    if (radius.radius.cornerRadius > 0) {
      final a = radius.a;
      final b = radius.b;
      final c = radius.c;
      final d = radius.d;
      final p = radius.p;
      this
        ..lineTo(
          math.min(width / 2, p),
          height,
        )
        ..cubicTo(
          p - a,
          height,
          p - a - b,
          height,
          p - a - b - c,
          height - d,
        )
        ..relativeArcToPoint(
          Offset(
            -radius.circularSectionLength,
            -radius.circularSectionLength,
          ),
          radius: radius.radius,
        )
        ..cubicTo(
          0,
          height - (p - a - b),
          0,
          height - (p - a),
          0,
          math.max(height / 2, height - p),
        );
    } else {
      this..lineTo(0, height)..lineTo(0, height / 2);
    }
  }

  /// Adds a smooth top-left corner to the path.
  ///
  /// Uses [EzProcessedSmoothRadius] to calculate the curve and arc for the
  /// top-left corner of the rectangle defined by [rect].
  void addSmoothTopLeft(EzProcessedSmoothRadius radius, Rect rect) {
    final width = rect.width;
    final height = rect.height;
    if (radius.radius.cornerRadius > 0) {
      final a = radius.a;
      final b = radius.b;
      final c = radius.c;
      final d = radius.d;
      final p = radius.p;
      this
        ..lineTo(
          0,
          math.min(height / 2, p),
        )
        ..cubicTo(
          0,
          p - a,
          0,
          p - a - b,
          d,
          p - a - b - c,
        )
        ..relativeArcToPoint(
          Offset(
            radius.circularSectionLength,
            -radius.circularSectionLength,
          ),
          radius: radius.radius,
        )
        ..cubicTo(
          p - a - b,
          0,
          p - a,
          0,
          math.min(width / 2, p),
          0,
        )
        ..close();
    } else {
      this
        ..lineTo(0, 0)
        ..close();
    }
  }
}
