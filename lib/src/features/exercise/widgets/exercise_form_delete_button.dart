import 'package:ez_fit_app/src/features/exercise/controller/exercise_delete_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseFormDeleteButton extends ConsumerWidget {
  const ExerciseFormDeleteButton(this.exerciseId, {
    super.key,
  });

  final String exerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the ExerciseFormDeleteController
    final deleteState = ref.watch(exerciseDeleteControllerProvider);
    final isLoading = deleteState.isLoading;

    return EzButton(
      text: ref.loc.exerciseDelete,
      textColor: Theme.of(context).colorScheme.error,
      type: EzButtonType.outlined,
      isLoading: isLoading,
      onPressed: isLoading
          ? null
          : () async {
              final controller = ref.read(
                exerciseDeleteControllerProvider.notifier,
              );
              await controller.deleteExercise(exerciseId);
            },
    );
  }
}
