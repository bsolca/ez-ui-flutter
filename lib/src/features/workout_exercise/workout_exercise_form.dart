import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_duration.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_reps.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_load.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseForm extends ConsumerWidget {
  const WorkoutExerciseForm({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: ListView(
        shrinkWrap: true,
        children: [
          // Row(
          //   children: [
          //     EzDropdownButton(
          //       menuWidth: 400,
          //       text: 'Choose Type',
          //       onSelected: (value) {
          //         // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
          //         print('TESTY: Pressed on ${value}');
          //       },
          //       items: const [
          //         EzDropdownItem(
          //           value: 'cardio',
          //           label: 'Cardio',
          //           icon: Icons.directions_run,
          //           isSelected: true,
          //         ),
          //         EzDropdownItem(
          //           icon: Icons.fitness_center,
          //           value: 'strength',
          //           label: 'Strength',
          //         ),
          //         EzDropdownItem(value: 'other', label: 'Other'),
          //       ],
          //     ),
          //     Spacer(),
          //     EzDropdownButton(
          //         onSelected: (value) {
          //           // TODO: REMOVE TESTY DEBUG LOG BEFORE COMMIT
          //           print('TESTY: Pressed on ${value}');
          //         },
          //         menuWidth: 200,
          //         text: 'Choose Type',
          //         items: const [
          //           EzDropdownItem(value: 'cardio', label: 'Cardio'),
          //           EzDropdownItem(value: 'strength', label: 'Strength'),
          //           EzDropdownItem(value: 'other', label: 'Other'),
          //         ]),
          //   ],
          // ),
          EzHeader.displayMedium(ref.loc.workoutExerciseFormHeader),
          WorkoutExerciseFormReps(
            key: ValueKey(workoutExerciseId),
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
          WorkoutExerciseFormDuration(
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
          WorkoutExerciseFormLoad(
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
          // EzFormItemLayout(
          //   itemLabel: ref.loc.workoutExerciseFormRestTime,
          //   itemDescription: ref.loc.workoutExerciseFormRestTimeDescription,
          //   child: Skeletonizer(
          //     enabled: loadingData,
          //     child: EzTextFormField(
          //       hintText: ref.loc.workoutExerciseFormRestTimeHint,
          //       controller: restTimeController,
          //       keyboardType: TextInputType.number,
          //     ),
          //   ),
          // ),
          // EzFormItemLayout(
          //   itemLabel: ref.loc.workoutExerciseFormTempo,
          //   itemDescription: ref.loc.workoutExerciseFormTempoDescription,
          //   child: Skeletonizer(
          //     enabled: loadingData,
          //     child: EzTextFormField(
          //       hintText: ref.loc.workoutExerciseFormTempoHint,
          //       controller: tempoController,
          //     ),
          //   ),
          // ),
          // EzFormItemLayout(
          //   itemLabel: ref.loc.workoutExerciseFormDistance,
          //   itemDescription: ref.loc.workoutExerciseFormDistanceDescription,
          //   child: Skeletonizer(
          //     enabled: loadingData,
          //     child: EzTextFormField(
          //       hintText: ref.loc.workoutExerciseFormDistanceHint,
          //       controller: distanceController,
          //       keyboardType: TextInputType.number,
          //     ),
          //   ),
          // ),
          // EzFormItemLayout(
          //   itemLabel: ref.loc.workoutExerciseFormIntensity,
          //   itemDescription: ref.loc.workoutExerciseFormIntensityDescription,
          //   child: Skeletonizer(
          //     enabled: loadingData,
          //     child: EzTextFormField(
          //       hintText: ref.loc.workoutExerciseFormIntensityLevelHint,
          //       controller: intensityController,
          //     ),
          //   ),
          // ),
          // EzFormItemLayout(
          //   itemLabel: ref.loc.workoutExerciseFormCustomNotes,
          //   itemDescription: ref.loc.workoutExerciseFormCustomNotesDescription,
          //   child: Skeletonizer(
          //     enabled: loadingData,
          //     child: EzTextFormField(
          //       hintText: ref.loc.workoutExerciseFormCustomNotesHint,
          //       controller: customNotesController,
          //       maxLines: 3,
          //     ),
          //   ),
          // ),
        ].withSpaceBetween(height: EzConstLayout.spacerSmall),
      ),
    );
  }
}
