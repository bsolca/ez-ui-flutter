import 'dart:ui';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';

/// A radius with a [cornerRadius] and [cornerSmoothing].
@immutable
class EzSmoothRadius extends Radius {
  /// Creates a radius with the given [cornerRadius] and [cornerSmoothing].
  const EzSmoothRadius({
    required double cornerRadius,
    required this.cornerSmoothing,
  }) : super.circular(cornerRadius);

  /// Linearly interpolates between two [EzSmoothRadius] values.
  ///
  /// If either value is null, it substitutes with [EzSmoothRadius.basic].
  EzSmoothRadius.lerp(EzSmoothRadius a, EzSmoothRadius b, double t)
      : this(
    cornerRadius: lerpDouble(a.cornerRadius, b.cornerRadius, t) ?? 0,
    cornerSmoothing: lerpDouble(a.cornerSmoothing, b.cornerSmoothing, t) ?? 0,
  );

  /// The smoothing factor for the corner in logical pixels.
  final double cornerSmoothing;

  /// The radius of the corner in logical pixels.
  double get cornerRadius => x;

  /// A zero radius with no smoothing.
  static const basic = EzSmoothRadius(
    cornerRadius: EzConstLayout.borderRadius,
    cornerSmoothing: EzConstLayout.cornerSmoothing,
  );

  /// Unary negation operator.
  ///
  /// Returns a [Radius] with negated distances.
  @override
  Radius operator -() => EzSmoothRadius(
        cornerRadius: -cornerRadius,
        cornerSmoothing: cornerSmoothing,
      );

  /// Binary subtraction operator.
  ///
  /// Returns a [Radius] subtracting both the [x] and [y] values.
  @override
  Radius operator -(Radius other) {
    if (other is EzSmoothRadius) {
      return EzSmoothRadius(
        cornerRadius: cornerRadius - other.cornerRadius,
        cornerSmoothing: (cornerSmoothing + other.cornerSmoothing) / 2,
      );
    }
    return EzSmoothRadius(
      cornerRadius: cornerRadius - other.x,
      cornerSmoothing: cornerSmoothing,
    );
  }

  /// Binary addition operator.
  ///
  /// Returns a [Radius] adding both the [x] and [y] values.
  @override
  Radius operator +(Radius other) {
    if (other is EzSmoothRadius) {
      return EzSmoothRadius(
        cornerRadius: cornerRadius + other.cornerRadius,
        cornerSmoothing: (cornerSmoothing + other.cornerSmoothing) / 2,
      );
    }
    return EzSmoothRadius(
      cornerRadius: cornerRadius + other.x,
      cornerSmoothing: cornerSmoothing,
    );
  }

  /// Multiplies both [x] and [y] values by the given operand.
  @override
  EzSmoothRadius operator *(double operand) => EzSmoothRadius(
        cornerRadius: cornerRadius * operand,
        cornerSmoothing: cornerSmoothing * operand,
      );

  /// Divides both [x] and [y] values by the given operand.
  @override
  EzSmoothRadius operator /(double operand) => EzSmoothRadius(
        cornerRadius: cornerRadius / operand,
        cornerSmoothing: cornerSmoothing / operand,
      );

  /// Integer division of both [x] and [y] values.
  @override
  EzSmoothRadius operator ~/(double operand) => EzSmoothRadius(
        cornerRadius: (cornerRadius ~/ operand).toDouble(),
        cornerSmoothing: (cornerSmoothing ~/ operand).toDouble(),
      );

  /// Modulo operator for both [x] and [y] values.
  @override
  EzSmoothRadius operator %(double operand) => EzSmoothRadius(
        cornerRadius: cornerRadius % operand,
        cornerSmoothing: cornerSmoothing % operand,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;

    return other is EzSmoothRadius &&
        other.cornerRadius == cornerRadius &&
        other.cornerSmoothing == cornerSmoothing;
  }

  @override
  int get hashCode => Object.hash(cornerRadius, cornerSmoothing);

  @override
  String toString() {
    return 'SmoothRadius('
        'cornerRadius: ${cornerRadius.toStringAsFixed(2)}, '
        'cornerSmoothing: ${cornerSmoothing.toStringAsFixed(2)}, '
        ')';
  }
}
