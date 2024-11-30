import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormLoad extends ConsumerWidget {
  const WorkoutExerciseFormLoad({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadModel = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
        (value) {
          return value.when(
            data: (v) => v.workoutExercises
                .firstWhere(
                  (e) => e.id == workoutExerciseId,
                )
                .load,
            error: (error, stackTrace) => throw Exception(error.toString()),
            loading: () => null,
          );
        },
      ),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormLoad,
      itemDescription: ref.loc.workoutExerciseFormLoadDescription,
      child: EzTextFormFieldWithDropdown(
        initialValue: loadModel?.amount.toString(),
        hintText: ref.loc.workoutExerciseFormLoadHint,
        onChanged: (value) {
          if (value.isNotEmpty) {
            ref
                .read(
                  workoutFormControllerProvider(workoutId: workoutId).notifier,
                )
                .updateLoadAmount(workoutExerciseId, value);
          }
        },
        dropdownText: loadModel?.unit.name ?? 'Select',
        menuWidth: 200,
        keyboardType: TextInputType.number,
        items: [
          EzDropdownItem(
            value: 'kg',
            label: 'kg',
            isSelected: loadModel?.unit.name == 'kg',
          ),
          EzDropdownItem(
            value: 'lbs',
            label: 'lbs',
            isSelected: loadModel?.unit.name == 'lbs',
          ),
        ],
        onSelected: (value) {
          if (value.isNotEmpty) {
            ref
                .read(
                  workoutFormControllerProvider(workoutId: workoutId).notifier,
                )
                .updateLoadUnit(workoutExerciseId, value);
          }
        },
      ),
    );
  }
}
