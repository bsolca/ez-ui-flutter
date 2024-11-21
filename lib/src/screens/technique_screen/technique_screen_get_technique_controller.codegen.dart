import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/service/technique_service.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'technique_screen_get_technique_controller.codegen.g.dart';

@riverpod
Future<TechniqueModel?> Function()? techniquesScreenGetTechniqueController(
  Ref ref,
  String? id,
) {
  final service = ref.watch(techniqueServiceProvider);

  if (id == null || id.isEmpty || id == 'new') {
    return null;
  }

  return () => service.getTechniqueById(id);
}
