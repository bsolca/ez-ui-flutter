import 'package:freezed_annotation/freezed_annotation.dart';

part 'tempo_model.codegen.freezed.dart';
part 'tempo_model.codegen.g.dart';

/// Represents a tempo model with eccentric, concentric, and pause durations.
@freezed
class TempoModel with _$TempoModel {
  /// Tempo model to specify pacing for an exercise with fractional seconds.
  const factory TempoModel({
    required double eccentric, // Duration for the eccentric (lowering) phase
    required double pause,     // Duration for the pause phase
    required double concentric, // Duration for the concentric (lifting) phase
  }) = _TempoModel;

  /// Creates a new tempo model from a JSON map.
  factory TempoModel.fromJson(Map<String, dynamic> json) =>
      _$TempoModelFromJson(json);
}
