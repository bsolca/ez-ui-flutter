import 'package:ez_fit_app/src/features/workout_exercise/model/workout_exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout_exercise/service/workout_exercise_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:ez_fit_app/src/utils/localization/app_local.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_controller.codegen.g.dart';

/// Controller specifically for handling saving or updating workout exercises.
@riverpod
class WorkoutExerciseController extends _$WorkoutExerciseController {
  @override
  Future<void> build() async {
    // Initial setup if needed; otherwise, no action needed on build.
  }

  /// Save or update a specific workout exercise.
  Future<void> saveWorkoutExercise(WorkoutExerciseModel workoutExercise) async {
    final workoutExerciseService = ref.read(workoutExerciseServiceProvider);
    final isCreateWorkoutExercise =
        workoutExercise.id.isEmpty || workoutExercise.id == 'new';
    final successMessage = isCreateWorkoutExercise
        ? ref
            .read(appLocalProvider)
            .successfullyCreated(workoutExercise.exerciseId)
        : ref
            .read(appLocalProvider)
            .successfullyUpdated(workoutExercise.exerciseId);

    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: successMessage,
      errorToastMessage: (e) => e.toString(),
      future: () async {
        if (isCreateWorkoutExercise) {
          await workoutExerciseService.createWorkoutExercise(workoutExercise);
        } else {
          await workoutExerciseService.updateWorkoutExercise(workoutExercise);
        }
      },
    );
  }

  /// Delete a specific workout exercise.
  Future<void> deleteWorkoutExercise(String workoutExerciseId) async {
    final workoutExerciseService = ref.read(workoutExerciseServiceProvider);
    final successMessage = ref
        .read(appLocalProvider)
        .successfullyDeleted(workoutExerciseId);

    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: successMessage,
      errorToastMessage: (e) => e.toString(),
      future: () async {
        await workoutExerciseService.deleteWorkoutExercise(workoutExerciseId);
      },
    );
  }
}
