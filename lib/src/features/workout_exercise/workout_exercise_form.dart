import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_custom_note.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_distance.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_duration.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_intensity.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_load.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_reps.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_rest_time.dart';
import 'package:ez_fit_app/src/features/workout_exercise/form_widget/workout_exercise_form_tempo.dart';
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
          WorkoutExerciseFormRestTime(
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
          WorkoutExerciseFormTempo(
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
          WorkoutExerciseFormDistance(
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
          WorkoutExerciseFormIntensity(
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
          WorkoutExerciseFormCustomNotes(
            workoutId: workoutId,
            workoutExerciseId: workoutExerciseId,
          ),
        ].withSpaceBetween(height: EzConstLayout.spacerSmall),
      ),
    );
  }
}
