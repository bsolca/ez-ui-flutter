import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/service/technique_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'technique_list_controller.codegen.g.dart';

@riverpod
class TechniqueListController extends _$TechniqueListController {
  @override
  Future<List<TechniqueModel>> build() {
    final userService = ref.read(techniqueServiceProvider);
    return userService.getTechniques();
  }
}
