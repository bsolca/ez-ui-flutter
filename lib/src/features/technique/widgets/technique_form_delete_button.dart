import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/technique/controller/technique_delete_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TechniqueFormDeleteButton extends ConsumerWidget {
  const TechniqueFormDeleteButton({
    super.key,
    required this.techniqueId,
    required this.techniqueName,
    required this.isDisabled,
  });

  final String techniqueId;
  final String techniqueName;
  final bool isDisabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the TechniqueFormDeleteController
    final deleteState = ref.watch(techniqueDeleteControllerProvider);
    final isGeneralLoading = ref.watch(loadingControllerProvider);
    final isLoading = deleteState.isLoading;

    return EzButton(
      text: ref.loc.techniqueDelete,
      textColor: Theme.of(context).colorScheme.error,
      type: EzButtonType.outlined,
      isLoading: isLoading,
      onPressed: isLoading || isGeneralLoading || isDisabled
          ? null
          : () async => ref
              .read(
                techniqueDeleteControllerProvider.notifier,
              )
              .deleteTechnique(techniqueId, techniqueName),
    );
  }
}
