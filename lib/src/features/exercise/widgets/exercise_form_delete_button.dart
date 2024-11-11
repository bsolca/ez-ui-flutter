import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/controller/exercise_delete_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseFormDeleteButton extends ConsumerWidget {
  const ExerciseFormDeleteButton({
    super.key,
    required this.exerciseId,
    required this.exerciseName,
    required this.isDisabled,
  });

  final String exerciseId;
  final String exerciseName;
  final bool isDisabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the ExerciseFormDeleteController
    final deleteState = ref.watch(exerciseDeleteControllerProvider);
    final isGeneralLoading = ref.watch(loadingControllerProvider);
    final isLoading = deleteState.isLoading;

    return EzButton(
      text: ref.loc.exerciseDelete,
      textColor: Theme.of(context).colorScheme.error,
      type: EzButtonType.outlined,
      isLoading: isLoading,
      onPressed: isLoading || isGeneralLoading || isDisabled
          ? null
          : () async => ref
              .read(
                exerciseDeleteControllerProvider.notifier,
              )
              .deleteExercise(exerciseId, exerciseName),
    );
  }
}
