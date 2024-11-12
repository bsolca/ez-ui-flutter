import 'package:freezed_annotation/freezed_annotation.dart';

part 'reps_model.codegen.freezed.dart';
part 'reps_model.codegen.g.dart';

/// Represents a repetitions model with count.
@freezed
class RepsModel with _$RepsModel {
  /// Repetitions model to specify the count of reps.
  const factory RepsModel({
    required int count, // Number of repetitions
  }) = _RepsModel;

  /// Creates a new reps model from a JSON map.
  factory RepsModel.fromJson(Map<String, dynamic> json) =>
      _$RepsModelFromJson(json);
}
