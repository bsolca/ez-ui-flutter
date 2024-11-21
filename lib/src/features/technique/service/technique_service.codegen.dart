import 'package:ez_fit_app/src/features/technique/data/technique_repository.codegen.dart';
import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'technique_service.codegen.g.dart';

class TechniqueService {
  const TechniqueService(
    TechniqueRepository techniqueRepository,
  ) : _techniqueRepository = techniqueRepository;

  final TechniqueRepository _techniqueRepository;

  Future<List<TechniqueModel>> getTechniques() async {
    return _techniqueRepository.getTechniques();
  }

  Future<TechniqueModel> getTechniqueById(String id) async {
    return _techniqueRepository.getTechniqueById(id);
  }

  Future<void> deleteTechnique(String id) async {
    return _techniqueRepository.deleteTechnique(id);
  }

  Future<void> updateTechnique(TechniqueModel technique) async {
    return _techniqueRepository.updateTechnique(technique);
  }

  Future<void> createTechnique(TechniqueModel technique) async {
    return _techniqueRepository.createTechnique(technique);
  }
}

@riverpod
TechniqueService techniqueService(Ref ref) {
  final techniqueRepository = ref.watch(techniqueRepositoryProvider);

  return TechniqueService(techniqueRepository);
}
