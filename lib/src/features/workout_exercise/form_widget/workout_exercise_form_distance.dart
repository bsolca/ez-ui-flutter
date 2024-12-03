import 'package:ez_fit_app/src/features/_core/_models/distance_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormDistance extends ConsumerWidget {
  const WorkoutExerciseFormDistance({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final distanceModel = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
        (value) {
          return value.when(
            data: (v) => v.workoutExercises
                .firstWhere((e) => e.id == workoutExerciseId)
                .distance,
            error: (error, stackTrace) => throw Exception(error.toString()),
            loading: () => null,
          );
        },
      ),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormDistance,
      itemDescription: ref.loc.workoutExerciseFormDistanceDescription,
      child: Flexible(
        child: EzTextFormFieldWithDropdown(
          initialValue: distanceModel?.value.toStringAsFixed(2),
          hintText: ref.loc.workoutExerciseFormDistanceHint,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
          ],
          onChanged: (value) {
            if (value.isNotEmpty) {
              ref
                  .read(
                    workoutFormControllerProvider(workoutId: workoutId)
                        .notifier,
                  )
                  .updateDistanceValue(
                    workoutExerciseId,
                    double.parse(value),
                  );
            }
          },
          dropdownText: distanceModel?.unit.name ?? ref.loc.select,
          menuWidth: 200,
          items: DistanceUnit.values
              .map(
                (unit) => EzDropdownItem<DistanceUnit>(
                  value: unit,
                  label: unit.name,
                  isSelected: distanceModel?.unit == unit,
                ),
              )
              .toList(),
          onSelected: (unit) {
            ref
                .read(
                  workoutFormControllerProvider(workoutId: workoutId).notifier,
                )
                .updateDistanceUnit(
                  workoutExerciseId,
                  unit,
                );
          },
        ),
      ),
    );
  }
}
