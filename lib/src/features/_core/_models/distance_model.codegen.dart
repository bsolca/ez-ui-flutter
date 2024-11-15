import 'package:ez_fit_app/src/utils/converters/double_converter.dart';
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
    @DefaultDoubleConverter() required double value,
    @DistanceUnitConverter() required DistanceUnit unit,
  }) = _DistanceModel;

  /// Creates a new distance model from a JSON map.
  factory DistanceModel.fromJson(Map<String, dynamic> json) =>
      _$DistanceModelFromJson(json);
}

/// Converter for [DistanceUnit] to and from JSON.
///
/// This converter is used in [DistanceModel] to convert between [DistanceUnit] and
/// JSON strings.
class DistanceUnitConverter implements JsonConverter<DistanceUnit, String> {
  /// Creates an instance of [DistanceUnitConverter].
  const DistanceUnitConverter();

  /// Converts a JSON string to a [DistanceUnit].
  @override
  DistanceUnit fromJson(String json) {
    switch (json) {
      case 'meters':
        return DistanceUnit.meters;
      case 'kilometers':
        return DistanceUnit.kilometers;
      case 'miles':
        return DistanceUnit.miles;
      default:
        // Provide a default value when the unit is invalid
        return DistanceUnit.meters; // or any default you prefer
    }
  }

  /// Converts a [DistanceUnit] to a JSON string.
  @override
  String toJson(DistanceUnit object) => object.toString().split('.').last;
}