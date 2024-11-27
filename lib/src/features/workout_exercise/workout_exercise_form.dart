import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WorkoutExerciseForm extends ConsumerStatefulWidget {
  const WorkoutExerciseForm({
    super.key,
    required this.workoutExerciseId,
    this.isLoading = false,
  });

  final String workoutExerciseId;
  final bool isLoading;

  @override
  ConsumerState<WorkoutExerciseForm> createState() =>
      _WorkoutExerciseFormState();
}

class _WorkoutExerciseFormState extends ConsumerState<WorkoutExerciseForm> {
  final formKey = GlobalKey<FormState>();
  final exerciseIdController = TextEditingController();
  final exerciseNameController = TextEditingController();
  final repsController = TextEditingController();
  final durationController = TextEditingController();
  final loadController = TextEditingController();
  final restTimeController = TextEditingController();
  final tempoController = TextEditingController();
  final distanceController = TextEditingController();
  final intensityController = TextEditingController();
  final customNotesController = TextEditingController();
  bool loadingData = false;

  @override
  void initState() {
    super.initState();
    loadingData = widget.isLoading;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              EzDropdownButton(
                text: 'Choose Type',
                onSelected: (value) {
                  // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
                  print('TESTY: Pressed on ${value}');
                },
                items: const [
                  EzDropdownItem(value: 'cardio', label: 'Cardio'),
                  EzDropdownItem(value: 'strength', label: 'Strength'),
                  EzDropdownItem(value: 'other', label: 'Other'),
                ],
              ),
              Spacer(),
              EzDropdownButton(text: 'Choose Type', items: const [
                EzDropdownItem(value: 'cardio', label: 'Cardio'),
                EzDropdownItem(value: 'strength', label: 'Strength'),
                EzDropdownItem(value: 'other', label: 'Other'),
              ]),
            ],
          ),
          EzHeader.displayMedium(ref.loc.workoutExerciseFormHeader),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormReps,
            itemDescription: ref.loc.workoutExerciseFormRepsDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormRepsHint,
                controller: repsController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormDuration,
            itemDescription: ref.loc.workoutExerciseFormDurationDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormDurationHint,
                controller: durationController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormLoad,
            itemDescription: ref.loc.workoutExerciseFormLoadDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormLoadHint,
                controller: loadController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormRestTime,
            itemDescription: ref.loc.workoutExerciseFormRestTimeDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormRestTimeHint,
                controller: restTimeController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormTempo,
            itemDescription: ref.loc.workoutExerciseFormTempoDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormTempoHint,
                controller: tempoController,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormDistance,
            itemDescription: ref.loc.workoutExerciseFormDistanceDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormDistanceHint,
                controller: distanceController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormIntensity,
            itemDescription: ref.loc.workoutExerciseFormIntensityDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormIntensityLevelHint,
                controller: intensityController,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutExerciseFormCustomNotes,
            itemDescription: ref.loc.workoutExerciseFormCustomNotesDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutExerciseFormCustomNotesHint,
                controller: customNotesController,
                maxLines: 3,
              ),
            ),
          ),
        ].withSpaceBetween(height: EzConstLayout.spacerSmall),
      ),
    );
  }
}
