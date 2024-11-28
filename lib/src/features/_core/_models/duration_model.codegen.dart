import 'package:ez_fit_app/src/utils/converters/double_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'duration_model.codegen.freezed.dart';
part 'duration_model.codegen.g.dart';

/// Represents a duration model with time in seconds.
@freezed
class DurationModel with _$DurationModel {
  /// Duration model to specify time in seconds.
  const factory DurationModel({
    @DefaultDoubleConverter() required double seconds,
    @DefaultDoubleConverter() required double minutes,
    @DefaultDoubleConverter() required double hours,
  }) = _DurationModel;

  /// Creates a new duration model from a JSON map.
  factory DurationModel.fromJson(Map<String, dynamic> json) =>
      _$DurationModelFromJson(json);
}
