import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WorkoutExerciseFormCustomNotes extends ConsumerWidget {
  const WorkoutExerciseFormCustomNotes({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customNotes = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
            (value) {
          return value.when(
            data: (v) => v.workoutExercises
                .firstWhere(
                  (e) => e.id == workoutExerciseId,
            )
                .customNotes,
            error: (error, stackTrace) => throw Exception(error.toString()),
            loading: () => null,
          );
        },
      ),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormCustomNotes,
      itemDescription: ref.loc.workoutExerciseFormCustomNotesDescription,
      child: customNotes != null
          ? EzTextFormField(
        initialValue: customNotes,
        hintText: ref.loc.workoutExerciseFormCustomNotesHint,
        maxLines: 3,
        onChanged: (value) {
          ref
              .read(
            workoutFormControllerProvider(workoutId: workoutId)
                .notifier,
          )
              .updateCustomNotes(workoutExerciseId, value);
        },
      )
          : Skeletonizer(
        child: EzTextFormField(
          hintText: ref.loc.workoutExerciseFormCustomNotesHint,
          maxLines: 3,
        ),
      ),
    );
  }
}
