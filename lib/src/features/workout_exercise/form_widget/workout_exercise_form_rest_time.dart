import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormRestTime extends ConsumerWidget {
  const WorkoutExerciseFormRestTime({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final restTime = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
        (value) {
          return value.when(
            data: (v) => v.workoutExercises
                .firstWhere(
                  (e) => e.id == workoutExerciseId,
                  orElse: WorkoutExerciseModel.empty,
                )
                .restTimeBetweenExercise,
            error: (error, stackTrace) => throw Exception(error.toString()),
            loading: () => null,
          );
        },
      ),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormRestTime,
      itemDescription: ref.loc.workoutExerciseFormRestTimeDescription,
      child: EzTextFormField(
        initialValue: restTime?.seconds.toString(),
        hintText: ref.loc.workoutExerciseFormRestTimeHint,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          if (value.isNotEmpty) {
            ref
                .read(
                  workoutFormControllerProvider(workoutId: workoutId).notifier,
                )
                .updateRestTime(workoutExerciseId, int.parse(value));
          }
        },
      ),
    );
  }
}
