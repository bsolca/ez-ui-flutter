import 'package:ez_fit_app/src/features/exercise/exercise_list.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:ez_fit_app/src/utils/routing/go_router_provider.codegen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// Screen that displays a list of exercises.
class ExercisesScreen extends ConsumerStatefulWidget {
  /// Creates an instance of [ExercisesScreen].
  const ExercisesScreen({super.key});

  @override
  ConsumerState<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends ConsumerState<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return EzScaffoldBody(
      child: ExerciseList(
        onAddExercise: () => context.goNamed(
          AppRoute.exercise.name,
          pathParameters: {'id': 'new'},
        ),
        onCellTap: (
          DataGridCellTapDetails details,
          List<ExerciseModel> exercises,
        ) {
          if (details.rowColumnIndex.rowIndex > 0) {
            final rowIndex = details.rowColumnIndex.rowIndex - 1;
            if (rowIndex < exercises.length) {
              final exercise = exercises[rowIndex];
              final exerciseId = exercise.id;

              context.goNamed(
                AppRoute.exercise.name,
                pathParameters: {'id': exerciseId},
              );
            }
          }
        },
      ),
    );
  }
}
