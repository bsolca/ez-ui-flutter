import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/technique/controller/technique_save_controller.codegen.dart';
import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TechniqueFormSaveButton extends ConsumerWidget {
  const TechniqueFormSaveButton(
    this.technique, {
    super.key,
    required this.isDisabled,
    required this.formKey,
  });

  final TechniqueModel technique;

  final bool isDisabled;

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the techniqueFormSaveController
    final saveState = ref.watch(techniqueSaveControllerProvider);
    final isGeneralLoading = ref.watch(loadingControllerProvider);
    final isLoading = saveState.isLoading;

    return EzButton(
      text: ref.loc.save,
      isLoading: isLoading,
      onPressed: isLoading || isGeneralLoading || isDisabled
          ? null
          : () async {
              if (formKey.currentState?.validate() != true) return;
              final controller = ref.read(
                techniqueSaveControllerProvider.notifier,
              );
              await controller.saveTechnique(technique);
            },
    );
  }
}
