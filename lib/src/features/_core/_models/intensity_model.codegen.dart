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
    required IntensityType type, // Type of intensity (e.g., zone or RPE)
    required int value, // Intensity value (e.g., zone number or RPE level)
  }) = _IntensityModel;

  /// Creates a new intensity model from a JSON map.
  factory IntensityModel.fromJson(Map<String, dynamic> json) =>
      _$IntensityModelFromJson(json);
}
