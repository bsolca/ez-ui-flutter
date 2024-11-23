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
          EzHeader.displayMedium(ref.loc.workoutTechniqueFormHeader),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormReps,
            itemDescription: ref.loc.workoutTechniqueFormRepsDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormRepsHint,
                controller: repsController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormDuration,
            itemDescription: ref.loc.workoutTechniqueFormDurationDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormDurationHint,
                controller: durationController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormLoad,
            itemDescription: ref.loc.workoutTechniqueFormLoadDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormLoadHint,
                controller: loadController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormRestTime,
            itemDescription: ref.loc.workoutTechniqueFormRestTimeDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormRestTimeHint,
                controller: restTimeController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormTempo,
            itemDescription: ref.loc.workoutTechniqueFormTempoDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormTempoHint,
                controller: tempoController,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormDistance,
            itemDescription: ref.loc.workoutTechniqueFormDistanceDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormDistanceHint,
                controller: distanceController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormIntensity,
            itemDescription: ref.loc.workoutTechniqueFormIntensityDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormIntensityLevelHint,
                controller: intensityController,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.workoutTechniqueFormCustomNotes,
            itemDescription: ref.loc.workoutTechniqueFormCustomNotesDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.workoutTechniqueFormCustomNotesHint,
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
