import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout/widgets/workout_form_delete_button.dart';
import 'package:ez_fit_app/src/features/workout/widgets/workout_form_save_button.dart';
import 'package:ez_fit_app/src/features/workout/workout_form_description.dart';
import 'package:ez_fit_app/src/features/workout/workout_form_name.dart';
import 'package:ez_fit_app/src/features/workout/workout_form_tags.dart';
import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/workout_steps_list.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/shared/ez_divider/ez_divider.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutForm extends ConsumerWidget {
  const WorkoutForm({
    super.key,
    required this.workoutId,
  });

  final String workoutId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    return Column(
      children: [
        Row(
          children: [
            Expanded(child: EzHeader.displayMedium(ref.loc.workoutFormHeader)),
            WorkoutFormSaveButton(
              formKey: formKey,
              workoutId: workoutId,
            ),
          ],
        ),
        const EzDivider(),
        Expanded(
          child: Form(
            key: formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                WorkoutFormName(workoutId: workoutId),
                WorkoutFormTags(workoutId: workoutId),
                WorkoutFormDescription(workoutId: workoutId),
                EzHeader.displayMedium(ref.loc.workoutFormStepsHeader),
                WorkoutStepsList(workoutId: workoutId),
                EzButton(
                  type: EzButtonType.outlined,
                  onPressed: () {
                    ref
                        .read(
                          workoutStepsControllerProvider(workoutId).notifier,
                        )
                        .addStep(
                          WorkoutStepModel(
                            id: 'new-id-'
                                '${DateTime.now().millisecondsSinceEpoch}',
                            name: 'New Step ',
                            description: 'Description for new step',
                            setCount: 1,
                            restTime: null,
                            workoutId: workoutId,
                          ),
                        );
                  },
                  text: 'Add Step',
                ),
                const EzDivider(),
                if (workoutId.isNotEmpty && workoutId != 'new')
                  WorkoutFormDeleteButton(
                    workoutId: workoutId,
                  ),
              ].withSpaceBetween(height: EzConstLayout.spacerSmall),
            ),
          ),
        ),
      ],
    );
  }
}
