import 'package:ez_fit_app/src/features/workout_exercise/controller/workout_exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/workout_exercise_list_item.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseList extends ConsumerWidget {
  const WorkoutExerciseList({
    super.key,
    required this.workoutId,
    required this.stepId,
  });

  final String workoutId;
  final String stepId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercisesLength = ref.watch(
      workoutExerciseListControllerProvider(
        workoutId: workoutId,
        stepId: stepId,
      ).select((value) => value.length),
    );

    final isLight = Theme.of(context).brightness == Brightness.light;
    final tileBgColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainer
        : Theme.of(context).colorScheme.surfaceContainerLow;
    final bgChildrenColor = isLight
        ? Theme.of(context).colorScheme.surfaceContainerLow
        : Theme.of(context).colorScheme.surfaceContainer;

    if (exercisesLength == 0) {
      return Container(
        padding: const EdgeInsets.all(EzConstLayout.spacer),
        margin: const EdgeInsets.all(EzConstLayout.spacerSmall),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: EzConstLayout.getBorderRadius(),
        ),
        width: double.infinity,
        child: Text(ref.loc.workoutExerciseEmptyList),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        exercisesLength,
            (index) {
          return WorkoutExerciseListItem(
            index: index,
            workoutId: workoutId,
            stepId: stepId,
            tileBgColor: tileBgColor,
            bgChildrenColor: bgChildrenColor,
          );
        },
      ),
    );;
  }
}
