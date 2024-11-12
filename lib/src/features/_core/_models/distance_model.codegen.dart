import 'package:freezed_annotation/freezed_annotation.dart';

part 'distance_model.codegen.freezed.dart';
part 'distance_model.codegen.g.dart';

/// Enum representing possible distance units.
enum DistanceUnit {
  meters,
  kilometers,
  miles,
}

/// Represents a distance model with value and unit.
@freezed
class DistanceModel with _$DistanceModel {
  /// Distance model to specify distance in various units.
  const factory DistanceModel({
    required double value, // Distance value
    required DistanceUnit unit, // Unit of measurement (e.g., meters, kilometers, miles)
  }) = _DistanceModel;

  /// Creates a new distance model from a JSON map.
  factory DistanceModel.fromJson(Map<String, dynamic> json) =>
      _$DistanceModelFromJson(json);
}
