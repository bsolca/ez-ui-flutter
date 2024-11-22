import 'package:ez_fit_app/src/features/technique/service/technique_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:ez_fit_app/src/utils/localization/app_local.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'technique_delete_controller.codegen.g.dart';

/// Controller specifically for handling deletion of techniques.
@riverpod
class TechniqueDeleteController extends _$TechniqueDeleteController {
  @override
  Future<void> build() async {
    // Initial setup if needed; otherwise, no action needed on build.
  }

  /// Delete a specific technique by its ID.
  Future<void> deleteTechnique(String id, String name) async {
    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: ref.read(appLocalProvider).successfullyDeleted(name),
      errorToastMessage: (e) => e.toString(),
      operation: () async {
        await ref.read(techniqueServiceProvider).deleteTechnique(id);
      },
    );
  }
}