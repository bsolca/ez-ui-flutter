import 'package:ez_fit_app/src/features/technique/data/technique_repository_dummy.codegen.dart';
import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'technique_repository.codegen.g.dart';

abstract interface class TechniqueRepository {
  Future<TechniqueModel> getTechniqueById(String id);

  Future<List<TechniqueModel>> getTechniques();

  Future<void> updateTechnique(TechniqueModel technique);

  Future<void> createTechnique(TechniqueModel technique);

  Future<void> deleteTechnique(String id);
}

/// Technique repository provider.
@riverpod
TechniqueRepository techniqueRepository(Ref ref) {
  return TechniqueRepositoryDummy();
}
