import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout/controller/workout_delete_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormDeleteButton extends ConsumerWidget {
  const WorkoutExerciseFormDeleteButton({
    super.key,
    required this.workoutId,
    required this.workoutName,
    required this.isDisabled,
  });

  final String workoutId;
  final String workoutName;
  final bool isDisabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the WorkoutExerciseFormDeleteController
    final deleteState = ref.watch(workoutExerciseControllerProvider);
    final isGeneralLoading = ref.watch(loadingControllerProvider);
    final isLoading = deleteState.isLoading;

    return EzButton(
      text: ref.loc.workoutDelete,
      textColor: Theme.of(context).colorScheme.error,
      type: EzButtonType.outlined,
      isLoading: isLoading,
      onPressed: isLoading || isGeneralLoading || isDisabled
          ? null
          : () async => ref
          .read(
        workoutDeleteControllerProvider.notifier,
      )
          .deleteWorkout(workoutId, workoutName),
    );
  }
}
