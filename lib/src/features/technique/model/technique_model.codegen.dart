import 'package:freezed_annotation/freezed_annotation.dart';

part 'technique_model.codegen.freezed.dart';

part 'technique_model.codegen.g.dart';

@freezed
class TechniqueModel with _$TechniqueModel {
  const factory TechniqueModel({
    required String id,
    required String name,
    required String? imageUrl,
    required String? videoUrl,
    required List<String> tags,
    required String description,
  }) = _TechniqueModel;

  factory TechniqueModel.fromJson(Map<String, dynamic> json) =>
      _$TechniqueModelFromJson(json);
}
