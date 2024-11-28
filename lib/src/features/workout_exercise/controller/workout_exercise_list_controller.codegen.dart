import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_list_controller.codegen.g.dart';

@riverpod
List<WorkoutExerciseModel> workoutExerciseListController(
  Ref ref, {
  required String workoutId,
  required String stepId,
}) {
  final workoutExerciseList = ref.watch(
    workoutFormControllerProvider(
      workoutId: workoutId,
    ).select((workoutForm) {
      return workoutForm.value?.workoutExercises.where(
        (workoutExercises) => workoutExercises.stepId == stepId,
      ).toList();
    }),
  );

  return workoutExerciseList ?? [];
}
