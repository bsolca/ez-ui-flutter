import 'package:ez_fit_app/src/features/_core/_models/distance_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/duration_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/intensity_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/load_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/reps_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/tempo_model.codegen.dart';
import 'package:ez_fit_app/src/features/_core/_models/weight_unit_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/widgets/workout_exercise_form_delete_button.dart';
import 'package:ez_fit_app/src/features/workout_exercise/widgets/workout_exercise_form_save_button.dart';
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
          EzHeader.displayMedium(ref.loc.workoutExerciseFormHeader),
          // todo exeerrcise selection dropdown
          // EzFormItemLayout(
          //   itemLabel: ref.loc.workoutExerciseFormExerciseId,
          //   itemDescription: ref.loc.workoutExerciseFormExerciseIdDescription,
          //   child: Skeletonizer(
          //     enabled: loadingData,
          //     child: EzTextFormField(
          //       hintText: ref.loc.workoutExerciseFormExerciseIdHint,
          //       controller: exerciseIdController,
          //       validator: (v) => v?.isNotEmpty ?? false ? null : ref.loc.required,
          //     ),
          //   ),
          // ),
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
          WorkoutExerciseFormSaveButton(
            formKey: formKey,
            isDisabled: loadingData,
            workoutExercise: WorkoutExerciseModel(
              id: widget.workoutExerciseId,
              exerciseId: exerciseIdController.text,
              reps: repsController.text.isNotEmpty
                  ? RepsModel(count: int.parse(repsController.text))
                  : null,
              duration: durationController.text.isNotEmpty
                  ? DurationModel(
                      seconds: double.parse(durationController.text))
                  : null,
              load: loadController.text.isNotEmpty
                  ? LoadModel(
                      amount: double.parse(loadController.text),
                      unit: WeightUnit.kg) // Todo Assume kg, adjust as needed
                  : null,
              restTimeBetweenSets: restTimeController.text.isNotEmpty
                  ? DurationModel(
                      seconds: double.parse(restTimeController.text))
                  : null,
              tempo: tempoController.text.isNotEmpty
                  ? const TempoModel(
                      eccentric: 2,
                      pause: 1,
                      concentric: 2) // Placeholder values, adjust as needed
                  : null,
              distance: distanceController.text.isNotEmpty
                  ? DistanceModel(
                      value: double.parse(distanceController.text),
                      unit: DistanceUnit.kilometers) // todo assume km
                  : null,
              intensity: intensityController.text.isNotEmpty
                  ? IntensityModel(
                      type: IntensityType.rpe, // TODO assume rpe
                      value: int.parse(intensityController.text),
                    )
                  : null,
              customNotes: customNotesController.text,
            ),
          ),
          if (widget.workoutExerciseId.isNotEmpty &&
              widget.workoutExerciseId != 'new')
            WorkoutExerciseFormDeleteButton(
              isDisabled: loadingData,
              workoutId: widget.workoutExerciseId,
              workoutName: exerciseIdController.text,
            ),
        ].withSpaceBetween(height: EzConstLayout.spacerSmall),
      ),
    );
  }
}
