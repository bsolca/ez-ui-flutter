import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.codegen.freezed.dart';

part 'exercise_model.codegen.g.dart';

@freezed
class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    required String id,
    required String name,
    required String? imageUrl,
    required String? videoUrl,
    required List<String> tags,
    required String description,
  }) = _ExerciseModel;

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);
}
