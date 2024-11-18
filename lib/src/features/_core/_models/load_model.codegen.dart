import 'package:ez_fit_app/src/features/_core/_models/weight_unit_model.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_model.codegen.freezed.dart';

part 'load_model.codegen.g.dart';

/// Represents a load model with amount and unit.
@freezed
class LoadModel with _$LoadModel {
  /// Load model to specify weight or resistance used in an exercise.
  const factory LoadModel({
    required double amount, // Amount of weight or resistance
    required WeightUnit unit, //  kg, lbs, %
  }) = _LoadModel;

  /// Creates a new load model from a JSON map.
  factory LoadModel.fromJson(Map<String, dynamic> json) =>
      _$LoadModelFromJson(json);
}
