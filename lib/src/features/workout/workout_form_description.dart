import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutFormDescription extends ConsumerWidget {
  const WorkoutFormDescription({
    super.key,
    required this.workoutId,
  });

  final String workoutId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wid = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
            (value) {
          return value.when(
            data: (v) {
              return EzTextFormField(
                hintText: ref.loc.workoutFormDescriptionHint,
                initialValue: v.workout.description,
                onChanged: (value) => ref
                    .read(
                  workoutFormControllerProvider(workoutId: workoutId)
                      .notifier,
                )
                    .updateDescription(value),
                validator: (v) {
                  return v?.isNotEmpty ?? false ? null : ref.loc.required;
                },
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => EzTextFormField(
              hintText: ref.loc.workoutFormDescriptionHint,
            ),
          );
        },
      ),
    );
    return EzFormItemLayout(
      itemLabel: ref.loc.workoutFormDescription,
      itemDescription: ref.loc.workoutFormDescriptionDescription,
      child: wid,
    );
  }
}
