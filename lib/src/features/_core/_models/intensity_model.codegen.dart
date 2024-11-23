import 'package:ez_fit_app/src/utils/converters/int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'intensity_model.codegen.freezed.dart';

part 'intensity_model.codegen.g.dart';

/// Enum representing possible intensity types.
enum IntensityType {
  /// Often based on percentages of maximum heart rate or power output.
  ///
  /// Split into whole-number ranges (like Zones 1 to 5 or 1 to 7).
  zone,

  /// RPE is a scale that ranges from 1 to 10.
  ///
  /// 1 usually means very light effort (like walking slowly)
  /// 10 means maximum effort (like sprinting as hard as possible)
  rpe,
}

/// Represents an intensity model with type and value.
@freezed
class IntensityModel with _$IntensityModel {
  /// Intensity model to specify the intensity level of an exercise.
  const factory IntensityModel({
    @IntensityTypeConverter() required IntensityType type,
    @DefaultIntConverter() required int value,
  }) = _IntensityModel;

  /// Creates a new intensity model from a JSON map.
  factory IntensityModel.fromJson(Map<String, dynamic> json) =>
      _$IntensityModelFromJson(json);
}

/// Converts between a JSON string and an IntensityType.
class IntensityTypeConverter implements JsonConverter<IntensityType, String> {
  /// Default constructor.
  const IntensityTypeConverter();

  /// Converts a JSON string to an IntensityType.
  @override
  IntensityType fromJson(String json) {
    switch (json) {
      case 'zone':
        return IntensityType.zone;
      case 'rpe':
        return IntensityType.rpe;
      default:
        // Provide a default value when the unit is invalid
        return IntensityType.zone; // or any default you prefer
    }
  }

  /// Converts an IntensityType to a JSON string.
  @override
  String toJson(IntensityType object) => object.toString().split('.').last;
}