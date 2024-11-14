import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormSaveButton extends ConsumerWidget {
  const WorkoutExerciseFormSaveButton({
    super.key,
    required this.formKey,
    required this.isDisabled,
    required this.workoutExercise,
  });

  final WorkoutExerciseModel workoutExercise;
  final bool isDisabled;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the WorkoutExerciseSaveController
    final saveState = ref.watch(workoutExerciseControllerProvider);
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
                workoutExerciseControllerProvider.notifier,
              );
              await controller.saveWorkoutExercise(workoutExercise);
            },
    );
  }
}
