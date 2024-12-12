import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_list.dart';
import 'package:ez_fit_app/src/features/workout_step/controllers/workout_step_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/widgets/workout_step_tile_form.dart';
import 'package:ez_fit_app/src/shared/ez_dialog/ez_dialog.dart';
import 'package:ez_fit_app/src/shared/ez_expansion_tile/ez_expansion_tile.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutStepTile extends ConsumerWidget {
  const WorkoutStepTile({
    super.key,
    required this.workoutStepId,
    required this.workoutId,
  });

  final String workoutStepId;
  final String workoutId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workoutStep = ref.watch(
      workoutStepControllerProvider(
        workoutId: workoutId,
        workoutStepId: workoutStepId,
      ),
    );
    final isLight = Theme.of(context).brightness == Brightness.light;
    final tileBgColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainerHighest
        : Theme.of(context).colorScheme.surfaceContainerHigh;
    final bgChildrenColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainerHigh
        : Theme.of(context).colorScheme.surfaceContainerHighest;

    return EzExpansionTile(
      title: Text('${workoutStep.name} (WkId: $workoutId)'),
      subtitle: Text(workoutStep.description ?? ''),
      tileBgColor: tileBgColor,
      bgChildrenColor: bgChildrenColor,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Add icon button
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              ref
                  .read(
                    workoutStepsControllerProvider(workoutId).notifier,
                  )
                  .createNewExercise(
                    stepId: workoutStep.id,
                  );
            },
          ),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => EzDialog.show<void>(
              builder: (_) => WorkoutStepTileForm(
                workoutId: workoutId,
                workoutStepId: workoutStep.id,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              ref
                  .read(
                    workoutStepsControllerProvider(workoutId).notifier,
                  )
                  .removeStep(workoutStep.id);
            },
          ),
        ],
      ),
      children: [
        WorkoutExerciseList(
          key: Key(workoutStep.id),
          workoutId: workoutId,
          stepId: workoutStep.id,
        ),
      ],
    );
  }
}
