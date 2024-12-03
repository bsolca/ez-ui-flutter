import 'package:ez_fit_app/src/features/_core/_models/intensity_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormIntensity extends ConsumerWidget {
  const WorkoutExerciseFormIntensity({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final intensityModel = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
        (value) {
          return value.when(
            data: (v) => v.workoutExercises
                .firstWhere((e) => e.id == workoutExerciseId)
                .intensity,
            error: (error, stackTrace) => throw Exception(error.toString()),
            loading: () => null,
          );
        },
      ),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormIntensity,
      itemDescription: ref.loc.workoutExerciseFormIntensityDescription,
      child: Flexible(
        child: EzTextFormFieldWithDropdown(
          initialValue: intensityModel?.value.toString(),
          hintText: ref.loc.workoutExerciseFormIntensityLevelHint,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+$')),
          ],
          onChanged: (value) {
            if (value.isNotEmpty) {
              ref
                  .read(
                    workoutFormControllerProvider(workoutId: workoutId)
                        .notifier,
                  )
                  .updateIntensityValue(
                    workoutExerciseId,
                    int.parse(value),
                  );
            }
          },
          dropdownText: intensityModel?.type.name ?? ref.loc.select,
          menuWidth: 200,
          items: IntensityType.values
              .map(
                (type) => EzDropdownItem<IntensityType>(
                  value: type,
                  label: type.name,
                  isSelected: intensityModel?.type == type,
                ),
              )
              .toList(),
          onSelected: (type) {
            ref
                .read(
                  workoutFormControllerProvider(workoutId: workoutId).notifier,
                )
                .updateIntensityType(
                  workoutExerciseId,
                  type,
                );
          },
        ),
      ),
    );
  }
}
