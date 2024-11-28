import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_list_controller.codegen.g.dart';

@riverpod
AsyncValue<List<WorkoutExerciseModel>> workoutExerciseListController(
  Ref ref, {
  required String workoutId,
  required String stepId,
}) {
  final exercisesAsyncValue = ref.watch(
    workoutFormControllerProvider(workoutId: workoutId).select(
      (asyncValue) => asyncValue.whenData(
        (workoutFormModel) => workoutFormModel.workoutExercises
            .where((e) => e.stepId == stepId)
            .toList(),
      ),
    ),
  );

  // Return AsyncValue<List<WorkoutExerciseModel>>
  return exercisesAsyncValue;
}
