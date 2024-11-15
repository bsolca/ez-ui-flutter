import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_unit_model.codegen.freezed.dart';

part 'weight_unit_model.codegen.g.dart';

/// Enum representing possible weight units.
enum WeightUnit {
  kg,
  lbs,
  percent,
}

/// Represents a weight unit model with different measurement units.
@freezed
class WeightUnitModel with _$WeightUnitModel {
  /// Weight unit model with available units for weight measurement.
  const factory WeightUnitModel({
    @WeightUnitConverter()  required WeightUnit unit, // Enum for "kg", "lbs", or "percent"
  }) = _WeightUnitModel;

  /// Creates a new weight unit model from a JSON map.
  factory WeightUnitModel.fromJson(Map<String, dynamic> json) =>
      _$WeightUnitModelFromJson(json);
}

class WeightUnitConverter implements JsonConverter<WeightUnit, String> {
  const WeightUnitConverter();

  @override
  WeightUnit fromJson(String json) {
    switch (json) {
      case 'kg':
        return WeightUnit.kg;
      case 'lbs':
        return WeightUnit.lbs;
      case 'percent':
        return WeightUnit.percent;
      default:
        // Provide a default value when the unit is invalid
        return WeightUnit.kg; // or any default you prefer
    }
  }

  @override
  String toJson(WeightUnit object) => object.toString().split('.').last;
}
