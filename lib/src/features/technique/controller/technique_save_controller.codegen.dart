import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/service/technique_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:ez_fit_app/src/utils/localization/app_local.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'technique_save_controller.codegen.g.dart';

/// Controller specifically for handling saving or updating techniques.
@riverpod
class TechniqueSaveController extends _$TechniqueSaveController {
  @override
  Future<void> build() async {
    // Initial setup if needed; otherwise, no action needed on build.
  }

  /// Save or update a specific technique.
  Future<void> saveTechnique(TechniqueModel technique) async {
    final techniqueService = ref.read(techniqueServiceProvider);
    final isCreateTechnique = technique.id.isEmpty || technique.id == 'new';
    final successMessage = isCreateTechnique
        ? ref.read(appLocalProvider).successfullyCreated(technique.name)
        : ref.read(appLocalProvider).successfullyUpdated(technique.name);

    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: successMessage,
      errorToastMessage: (e) => e.toString(),
      operation: () async {
        if (isCreateTechnique) {
          await techniqueService.createTechnique(technique);
        } else {
          await techniqueService.updateTechnique(technique);
        }
      },
    );
  }
}
