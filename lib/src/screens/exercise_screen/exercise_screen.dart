import 'package:ez_fit_app/src/features/exercise/exercise_form.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/screens/exercise_screen/exercises_screen_get_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseScreen extends ConsumerWidget {
  const ExerciseScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getExerciseController = ref.watch(
      exercisesScreenGetExerciseControllerProvider(id),
    );
    return EzScaffoldBody(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: ExerciseForm(
                loadExercise: getExerciseController,
                onSave: (_) async => print('Saved'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
