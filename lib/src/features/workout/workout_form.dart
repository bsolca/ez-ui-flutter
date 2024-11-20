import 'package:ez_fit_app/src/features/workout/controller/workout_screen_get_workout_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout/widgets/workout_form_delete_button.dart';
import 'package:ez_fit_app/src/features/workout/widgets/workout_form_save_button.dart';
import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/workout_steps_list.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/shared/ez_divider/ez_divider.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WorkoutForm extends ConsumerStatefulWidget {
  const WorkoutForm({
    super.key,
    required this.workoutId,
  });

  final String workoutId;

  @override
  ConsumerState<WorkoutForm> createState() => _WorkoutFormState();
}

class _WorkoutFormState extends ConsumerState<WorkoutForm> {
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final tagsController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loadingData = false;

  @override
  void initState() {
    super.initState();
    final getWorkoutController = ref.read(
      workoutScreenGetWorkoutControllerProvider(widget.workoutId),
    );

    if (getWorkoutController != null) {
      setState(() => loadingData = true);
      getWorkoutController().then((workout) {
        if (workout != null) {
          idController.text = workout.id;
          nameController.text = workout.name;
          descriptionController.text = workout.description ?? '';
          tagsController.text = workout.tags.join(', ');
        }
        setState(() => loadingData = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            EzHeader.displayMedium(ref.loc.workoutFormHeader),
            const Spacer(),
            WorkoutFormSaveButton(
              formKey: formKey,
              isDisabled: loadingData,
              workoutId: widget.workoutId,
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
                EzFormItemLayout(
                  itemLabel: ref.loc.workoutFormName,
                  itemDescription: ref.loc.workoutFormNameDescription,
                  child: Skeletonizer(
                    enabled: loadingData,
                    child: EzTextFormField(
                      hintText: ref.loc.workoutFormNameHint,
                      controller: nameController,
                      validator: (v) {
                        return v?.isNotEmpty ?? false ? null : ref.loc.required;
                      },
                    ),
                  ),
                ),
                EzFormItemLayout(
                  itemLabel: ref.loc.workoutFormTags,
                  itemDescription: ref.loc.workoutFormTagsDescription,
                  child: Skeletonizer(
                    enabled: loadingData,
                    child: EzTextFormField(
                      hintText: ref.loc.workoutFormTagsHint,
                      controller: tagsController,
                    ),
                  ),
                ),
                EzFormItemLayout(
                  itemLabel: ref.loc.workoutFormDescription,
                  itemDescription: ref.loc.workoutFormDescriptionDescription,
                  child: Skeletonizer(
                    enabled: loadingData,
                    child: EzTextFormField(
                      hintText: ref.loc.workoutFormDescriptionHint,
                      controller: descriptionController,
                      maxLines: 3,
                    ),
                  ),
                ),
                EzHeader.displayMedium(ref.loc.workoutFormStepsHeader),
                WorkoutStepsList(
                  workoutId: widget.workoutId,
                  loadingData: loadingData,
                ),
                EzButton(
                  type: EzButtonType.outlined,
                  onPressed: () {
                    // Example of adding a new step
                    ref
                        .read(
                          workoutStepsControllerProvider(widget.workoutId)
                              .notifier,
                        )
                        .addStep(
                          WorkoutStepModel(
                            id: 'new-id-'
                                '${DateTime.now().millisecondsSinceEpoch}',
                            name: 'New Step ',
                            description: 'Description for new step',
                            setCount: 1,
                            restTime: null,
                            workoutId: widget.workoutId,
                          ),
                        );
                  },
                  text: 'Add Step',
                ),
                const EzDivider(),
                if (widget.workoutId.isNotEmpty && widget.workoutId != 'new')
                  WorkoutFormDeleteButton(
                    isDisabled: loadingData,
                    workoutId: widget.workoutId,
                    workoutName: nameController.text,
                  ),
              ].withSpaceBetween(height: EzConstLayout.spacerSmall),
            ),
          ),
        ),
      ],
    );
  }
}
