import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

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

  final repsController = TextEditingController();


  @override
  void initState() {
    super.initState();
    repsController.addListener(() {
      if (repsController.text.isEmpty) {
        return;
      }
      ref.read(
        workoutFormControllerProvider(workoutId: widget.workoutId).notifier,
      ).updateReps(widget.workoutExerciseId, repsController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    final formPod = ref.watch(
      workoutFormControllerProvider(workoutId: widget.workoutId),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormReps,
      itemDescription: ref.loc.workoutExerciseFormRepsDescription,
      child: Skeletonizer(
        enabled: formPod.isLoading,
        child: EzTextFormField(
          hintText: ref.loc.workoutExerciseFormRepsHint,
          controller: repsController,
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
