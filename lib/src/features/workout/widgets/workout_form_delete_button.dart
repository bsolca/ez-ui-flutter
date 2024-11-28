import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout/controller/workout_delete_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutFormDeleteButton extends ConsumerWidget {
  const WorkoutFormDeleteButton({
    super.key,
    required this.workoutId,
  });

  final String workoutId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the loading state of the WorkoutFormDeleteController
    final deleteState = ref.watch(workoutDeleteControllerProvider);
    final isGeneralLoading = ref.watch(loadingControllerProvider);
    final isLoading = deleteState.isLoading;

    return EzButton(
      text: ref.loc.workoutDelete,
      textColor: Theme.of(context).colorScheme.error,
      type: EzButtonType.outlined,
      isLoading: isLoading,
      onPressed: isLoading || isGeneralLoading
          ? null
          : () async {
              final workoutName = ref
                      .read(workoutFormControllerProvider(workoutId: workoutId))
                      .value
                      ?.workout
                      .name ??
                  'Workout';
              return ref
                  .read(
                    workoutDeleteControllerProvider.notifier,
                  )
                  .deleteWorkout(workoutId, workoutName);
            },
    );
  }
}
