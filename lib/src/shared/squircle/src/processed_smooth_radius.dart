import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:impostor/src/shared/squircle/src/smooth_radius.dart';
import 'package:vector_math/vector_math.dart' as vector;

/// A class for processing smooth radii based on given dimensions.
///
/// This class calculates and stores the values necessary to create smooth
/// corners using [SmoothRadius] for both width and height of a rectangle.
///
/// The article from Figma's blog:
/// https://www.figma.com/blog/desperately-seeking-squircles/
///
/// The original code:
/// https://github.com/MartinRGB/squircles_Approximation/blob/bf29714aab58c54329f3ca130ffa16d39a2ff08c/js/rounded-corners.js#L64
@immutable
class ProcessedSmoothRadius {

  /// Factory constructor for [ProcessedSmoothRadius].
  ///
  /// Takes a [SmoothRadius], [width], and [height], and processes it to
  /// calculate the necessary properties for smooth corner generation.
  factory ProcessedSmoothRadius(
      SmoothRadius radius, {
        required double width,
        required double height,
      }) {
    final cornerSmoothing = radius.cornerSmoothing;
    var cornerRadius = radius.cornerRadius;

    final maxRadius = math.min(width, height) / 2;
    cornerRadius = math.min(cornerRadius, maxRadius);

    // 12.2 from the article
    final p = math.min((1 + cornerSmoothing) * cornerRadius, maxRadius);

    final double angleAlpha;
    final double angleBeta;

    if (cornerRadius <= maxRadius / 2) {
      angleBeta = 90 * (1 - cornerSmoothing);
      angleAlpha = 45 * cornerSmoothing;
    } else {
      // Calculations based on larger cornerRadius
      final diffRatio = (cornerRadius - maxRadius / 2) / (maxRadius / 2);

      angleBeta = 90 * (1 - cornerSmoothing * (1 - diffRatio));
      angleAlpha = 45 * cornerSmoothing * (1 - diffRatio);
    }

    final angleTheta = (90 - angleBeta) / 2;

    // Distance between P3 and P4 control points
    final p3ToP4Distance =
        cornerRadius * math.tan(vector.radians(angleTheta / 2));

    // Circular section length
    final circularSectionLength =
        math.sin(vector.radians(angleBeta / 2)) * cornerRadius * math.sqrt(2);

    // a, b, c, and d values from 11.1 in the article
    final c = p3ToP4Distance * math.cos(vector.radians(angleAlpha));
    final d = c * math.tan(vector.radians(angleAlpha));
    final b = (p - circularSectionLength - c - d) / 3;
    final a = 2 * b;

    return ProcessedSmoothRadius._(
      a: a,
      b: b,
      c: c,
      d: d,
      p: p,
      width: width,
      height: height,
      radius: SmoothRadius(
        cornerRadius: cornerRadius,
        cornerSmoothing: radius.cornerSmoothing,
      ),
      circularSectionLength: circularSectionLength,
    );
  }
  /// Creates a processed smooth radius object with necessary calculations.
  ///
  /// Takes [SmoothRadius] and dimensions [width] and [height] as input,
  /// processing the required parameters like angles and arc lengths.
  const ProcessedSmoothRadius._({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.p,
    required this.width,
    required this.height,
    required this.radius,
    required this.circularSectionLength,
  });

  /// The processed [SmoothRadius].
  final SmoothRadius radius;

  /// First control point offset for the cubic bezier curve.
  final double a;

  /// Second control point offset for the cubic bezier curve.
  final double b;

  /// Third control point offset for the cubic bezier curve.
  final double c;

  /// Fourth control point offset for the cubic bezier curve.
  final double d;

  /// Distance from the origin to control points based on corner smoothing.
  final double p;

  /// Length of the circular arc section connecting control points.
  final double circularSectionLength;

  /// Width of the rectangle being processed.
  final double width;

  /// Height of the rectangle being processed.
  final double height;


  /// Retrieves the corner radius value from the [SmoothRadius].
  double get cornerRadius => radius.cornerRadius;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    if (other is SmoothRadius) {
      return other == radius;
    }
    if (other is ProcessedSmoothRadius) {
      return other.radius == radius;
    }

    return false;
  }

  @override
  int get hashCode => radius.hashCode;

  @override
  String toString() {
    return 'ProcessedSmoothRadius('
        'radius: $radius, '
        'a: ${a.toStringAsFixed(2)}, '
        'b: ${b.toStringAsFixed(2)}, '
        'c: ${c.toStringAsFixed(2)}, '
        'd: ${d.toStringAsFixed(2)}, '
        'p: ${p.toStringAsFixed(2)}, '
        'width: ${width.toStringAsFixed(2)}, '
        'height: ${height.toStringAsFixed(2)}, '
        ')';
  }
}
