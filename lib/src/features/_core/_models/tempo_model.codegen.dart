import 'package:ez_fit_app/src/utils/converters/int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tempo_model.codegen.freezed.dart';

part 'tempo_model.codegen.g.dart';

/// Represents a tempo model with eccentric, concentric, and pause durations.
@freezed
class TempoModel with _$TempoModel {
  /// Tempo model to specify pacing for an exercise with fractional seconds.
  const factory TempoModel({
    /// Duration for the eccentric (lowering) phase
    @DefaultIntConverter() required int eccentric,

    /// Duration for the concentric (lifting) phase
    @DefaultIntConverter() required int pause,

    /// Duration for the concentric (lifting) phase
    @DefaultIntConverter() required int concentric,
  }) = _TempoModel;

  /// Creates a new tempo model from a JSON map.
  factory TempoModel.fromJson(Map<String, dynamic> json) =>
      _$TempoModelFromJson(json);
}
