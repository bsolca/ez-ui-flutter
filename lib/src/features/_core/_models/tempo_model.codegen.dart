import 'package:ez_fit_app/src/utils/converters/double_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tempo_model.codegen.freezed.dart';

part 'tempo_model.codegen.g.dart';

/// Represents a tempo model with eccentric, concentric, and pause durations.
@freezed
class TempoModel with _$TempoModel {
  /// Tempo model to specify pacing for an exercise with fractional seconds.
  const factory TempoModel({
    /// Duration for the eccentric (lowering) phase
    @DefaultDoubleConverter() required double eccentric,

    /// Duration for the concentric (lifting) phase
    @DefaultDoubleConverter() required double pause,

    /// Duration for the concentric (lifting) phase
    @DefaultDoubleConverter() required double concentric,
  }) = _TempoModel;

  /// Creates a new tempo model from a JSON map.
  factory TempoModel.fromJson(Map<String, dynamic> json) =>
      _$TempoModelFromJson(json);
}