import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:flutter/material.dart';

class WorkoutStepTileForm extends StatelessWidget {
  const WorkoutStepTileForm({
    super.key,
    required this.workoutId,
    required this.workoutStepId,
  });

  final String workoutId;
  final String workoutStepId;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EzFormItemLayout(
          itemLabel: 'Name',
          itemDescription: 'Name of the step',
          child: EzTextFormField(
            initialValue: workoutStep.name,
            hintText: 'Hint text todo',
            onChanged: (value) {
              // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
              print('TESTY: new value: $value');
            },
            keyboardType: TextInputType.number,
          ),
        ),
        EzFormItemLayout(
          itemLabel: 'Description',
          itemDescription: 'Description',
          child: EzTextFormField(
            initialValue: workoutStep.name,
            hintText: 'Hint text todo',
            onChanged: (value) {
              // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
              print('TESTY: new value: $value');
            },
            keyboardType: TextInputType.number,
          ),
        ),
        EzFormItemLayout(
          itemLabel: 'Count (optional, default: 1)',
          itemDescription: 'Number of time to repeat the set',
          child: EzTextFormField(
            initialValue: workoutStep.name,
            hintText: '1',
            onChanged: (value) {
              // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
              print('TESTY: new value: $value');
            },
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
