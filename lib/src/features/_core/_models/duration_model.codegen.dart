import 'package:ez_fit_app/src/utils/converters/int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'duration_model.codegen.freezed.dart';
part 'duration_model.codegen.g.dart';

/// Represents a duration model with time in seconds.
@freezed
class DurationModel with _$DurationModel {
  /// Duration model to specify time in seconds.
  const factory DurationModel({
    @DefaultIntConverter() required int seconds,
    @DefaultIntConverter() required int minutes,
    @DefaultIntConverter() required int hours,
  }) = _DurationModel;

  /// Creates a new duration model from a JSON map.
  factory DurationModel.fromJson(Map<String, dynamic> json) =>
      _$DurationModelFromJson(json);
}
