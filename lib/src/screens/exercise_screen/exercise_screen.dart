import 'package:ez_fit_app/src/features/exercise/exercise_form.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
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
    return EzScaffoldBody(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: ExerciseForm(
                loadExercise: () async {
                  await Future.delayed(const Duration(seconds: 20));
                  return const ExerciseModel(
                    id: '12',
                    name: 'Name test',
                    description: 'Description test',
                    tags: ['tag1', 'tag2'],
                    imageUrl: 'https://www.pexels.com/photo/woman-doing-corpse-pose-3823031/',
                    videoUrl: 'https://www.youtube.com/watch?v=Zb6Rrd1QzqI',
                  );
                },
                onSave: (_) async => print('Saved'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
