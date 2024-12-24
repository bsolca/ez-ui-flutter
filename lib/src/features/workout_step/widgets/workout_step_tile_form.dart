import 'package:ez_fit_app/src/features/workout_step/controllers/workout_step_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutStepTileForm extends ConsumerWidget {
  const WorkoutStepTileForm({
    super.key,
    required this.workoutId,
    required this.workoutStepId,
  });

  final String workoutId;
  final String workoutStepId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workoutStep = ref.watch(
      workoutStepControllerProvider(
        workoutId: workoutId,
        workoutStepId: workoutStepId,
      ),
    );

    final nameController = TextEditingController(
      text: workoutStep.name,
    );
    final descriptionController = TextEditingController(
      text: workoutStep.description,
    );
    final setCountController = TextEditingController(
      text: workoutStep.setCount.toString(),
    );
    final restTimeController = TextEditingController(
      text: workoutStep.restTime.toString(),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const EzHeader.displayMedium('Edit step'),
        EzFormItemLayout(
          itemLabel: 'Name',
          itemDescription: 'Name of the step',
          child: EzTextFormField(
            hintText: 'Hint text todo',
            controller: nameController,
            keyboardType: TextInputType.number,
          ),
        ),
        EzFormItemLayout(
          itemLabel: 'Description',
          itemDescription: 'Description',
          child: EzTextFormField(
            hintText: 'Hint text todo',
            controller: descriptionController,
            keyboardType: TextInputType.number,
          ),
        ),
        EzFormItemLayout(
          itemLabel: 'Count (optional, default: 1)',
          itemDescription: 'Number of time to repeat the set',
          child: EzTextFormField(
            hintText: '1',
            controller: setCountController,
            keyboardType: TextInputType.number,
          ),
        ),
        EzFormItemLayout(
          itemLabel: 'Rest time (optional, default: 1)',
          itemDescription: 'Rest time between sets',
          child: EzTextFormField(
            hintText: '1',
            controller: restTimeController,
            keyboardType: TextInputType.number,
          ),
        ),
        Row(
          children: [
            const Spacer(),
            EzButton(
              type: EzButtonType.link,
              text: 'Cancel',
              onPressed: () => Navigator.pop(context),
            ),
            EzButton(
              text: 'Save',
              onPressed: () => Navigator.pop(context),
            ),
          ].withSpaceBetween(
            width: EzConstLayout.spacerSmall,
          ),
        ),
      ].withSpaceBetween(
        height: EzConstLayout.spacerSmall,
      ),
    );
  }
}
