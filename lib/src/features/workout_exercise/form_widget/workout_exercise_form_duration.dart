import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WorkoutExerciseFormDuration extends ConsumerStatefulWidget {
  const WorkoutExerciseFormDuration({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  ConsumerState<WorkoutExerciseFormDuration> createState() =>
      _WorkoutExerciseFormDurationState();
}

class _WorkoutExerciseFormDurationState
    extends ConsumerState<WorkoutExerciseFormDuration> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formPod = ref.watch(
      workoutFormControllerProvider(workoutId: widget.workoutId),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormDuration,
      itemDescription: ref.loc.workoutExerciseFormDurationDescription,
      child: formPod.when(
        data: (form) {
          return EzTextFormField(
            hintText: ref.loc.workoutExerciseFormDurationHint,
            onChanged: (value) {
              if (value.isNotEmpty) {
                ref.read(
                  workoutFormControllerProvider(workoutId: widget.workoutId).notifier,
                ).updateDuration(widget.workoutExerciseId, value);
              }
            },
            keyboardType: TextInputType.number,
          );
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => Skeletonizer(
          child: EzTextFormField(
            hintText: ref.loc.workoutExerciseFormDurationHint,
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }
}
