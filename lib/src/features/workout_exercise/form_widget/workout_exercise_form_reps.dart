import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormReps extends ConsumerStatefulWidget {
  const WorkoutExerciseFormReps({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  ConsumerState<WorkoutExerciseFormReps> createState() =>
      _WorkoutExerciseFormRepsState();
}

class _WorkoutExerciseFormRepsState
    extends ConsumerState<WorkoutExerciseFormReps> {
  late final String? initialValue;

  @override
  void initState() {
    super.initState();
    initialValue = ref
        .read(
          workoutFormControllerProvider(workoutId: widget.workoutId),
        )
        .value!
        .workoutExercises
        .firstWhere((e) => e.id == widget.workoutExerciseId)
        .reps
        ?.count
        .toString();
  }

  @override
  Widget build(BuildContext context) {
    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormReps,
      itemDescription: ref.loc.workoutExerciseFormRepsDescription,
      child: EzTextFormField(
        hintText: ref.loc.workoutExerciseFormRepsHint,
        initialValue: initialValue,
        onChanged: (value) {
          ref
              .read(
                workoutFormControllerProvider(workoutId: widget.workoutId)
                    .notifier,
              )
              .updateReps(widget.workoutExerciseId, value);
        },
        keyboardType: TextInputType.number,
      ),
    );
  }
}
