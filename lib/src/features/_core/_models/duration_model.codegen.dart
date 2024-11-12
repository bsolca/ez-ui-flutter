import 'package:freezed_annotation/freezed_annotation.dart';

part 'duration_model.codegen.freezed.dart';
part 'duration_model.codegen.g.dart';

/// Represents a duration model with time in seconds.
@freezed
class DurationModel with _$DurationModel {
  /// Duration model to specify time in seconds.
  const factory DurationModel({
    required double seconds, // Duration in seconds, allowing fractional values
  }) = _DurationModel;

  /// Creates a new duration model from a JSON map.
  factory DurationModel.fromJson(Map<String, dynamic> json) =>
      _$DurationModelFromJson(json);
}
