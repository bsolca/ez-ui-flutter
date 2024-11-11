import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/controller/exercise_save_controller.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseFormSaveButton extends ConsumerWidget {
  const ExerciseFormSaveButton(
    this.exercise, {
    super.key,
    required this.isDisabled,
    required this.formKey,
  });

  final ExerciseModel exercise;

  final bool isDisabled;

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the ExerciseFormSaveController
    final saveState = ref.watch(exerciseSaveControllerProvider);
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
                exerciseSaveControllerProvider.notifier,
              );
              await controller.saveExercise(exercise);
            },
    );
  }
}
