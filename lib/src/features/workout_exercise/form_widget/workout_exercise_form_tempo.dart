import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutExerciseFormTempo extends ConsumerWidget {
  const WorkoutExerciseFormTempo({
    super.key,
    required this.workoutId,
    required this.workoutExerciseId,
  });

  final String workoutId;
  final String workoutExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tempo = ref.watch(
      workoutFormControllerProvider(workoutId: workoutId).select(
        (value) {
          return value.when(
            data: (v) => v.workoutExercises
                .firstWhere(
                  (e) => e.id == workoutExerciseId,
              orElse: WorkoutExerciseModel.empty,

            )
                .tempo,
            error: (error, stackTrace) => throw Exception(error.toString()),
            loading: () => null,
          );
        },
      ),
    );

    return EzFormItemLayout(
      itemLabel: ref.loc.workoutExerciseFormTempo,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EzTextFormField(
            initialValue: tempo?.eccentric.toString(),
            hintText: ref.loc.workoutExerciseFormTempoEccentricHint,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              if (value.isNotEmpty) {
                ref
                    .read(
                      workoutFormControllerProvider(workoutId: workoutId)
                          .notifier,
                    )
                    .updateTempo(
                      workoutExerciseId: workoutExerciseId,
                      eccentric: int.parse(value),
                    );
              }
            },
          ),
          _buildText(
            context,
            ref.loc.workoutExerciseFormTempoEccentricDescription,
          ),
          EzTextFormField(
            initialValue: tempo?.pause.toString(),
            hintText: ref.loc.workoutExerciseFormTempoPauseHint,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              if (value.isNotEmpty) {
                ref
                    .read(
                      workoutFormControllerProvider(workoutId: workoutId)
                          .notifier,
                    )
                    .updateTempo(
                      workoutExerciseId: workoutExerciseId,
                      pause: int.parse(value),
                    );
              }
            },
          ),
          _buildText(
            context,
            ref.loc.workoutExerciseFormTempoPauseDescription,
          ),
          EzTextFormField(
            initialValue: tempo?.concentric.toString(),
            hintText: ref.loc.workoutExerciseFormTempoConcentricHint,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              if (value.isNotEmpty) {
                ref
                    .read(
                      workoutFormControllerProvider(workoutId: workoutId)
                          .notifier,
                    )
                    .updateTempo(
                      workoutExerciseId: workoutExerciseId,
                      concentric: int.parse(value),
                    );
              }
            },
          ),
          _buildText(
            context,
            ref.loc.workoutExerciseFormTempoConcentricDescription,
          ),
        ].withSpaceBetween(
          height: EzConstLayout.spacerSmall,
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context)
                .colorScheme
                .onSecondaryContainer
                .withOpacity(0.7),
          ),
    );
  }
}
