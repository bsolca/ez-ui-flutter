import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormDuration extends ConsumerWidget {
  const WorkoutExerciseFormDuration({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final durationModel = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
        (value) {
          return value.when(
            data: (v) => v.workoutExercises
                .firstWhere(
                  (e) => e.id == workoutExerciseId,
                )
                .duration,
            error: (error, stackTrace) => throw Exception(error.toString()),
            loading: () => null,
          );
        },
      ),
    );

    return EzFormItemLayout(
        itemLabel: ref.loc.workoutExerciseFormDuration,
        itemDescription: ref.loc.workoutExerciseFormDurationDescription,
        child: EzTextFormField(
          initialValue: durationModel?.seconds.toString(),
          hintText: ref.loc.workoutExerciseFormDurationHint,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            final seconds = int.parse(value);
            if (value.isNotEmpty) {
              ref
                  .read(
                    workoutFormControllerProvider(workoutId: workoutId)
                        .notifier,
                  )
                  .updateDuration(workoutExerciseId, seconds);
            }
          },
          keyboardType: TextInputType.number,
        ));
  }
}
