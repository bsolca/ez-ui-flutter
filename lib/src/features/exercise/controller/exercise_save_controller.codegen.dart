import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:ez_fit_app/src/utils/localization/app_local.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_save_controller.codegen.g.dart';

/// Controller specifically for handling saving or updating exercises.
@riverpod
class ExerciseSaveController extends _$ExerciseSaveController {
  @override
  Future<void> build() async {
    // Initial setup if needed; otherwise, no action needed on build.
  }

  /// Save or update a specific exercise.
  Future<void> saveExercise(ExerciseModel exercise) async {
    final exerciseService = ref.read(exerciseServiceProvider);
    final isCreateExercise = exercise.id.isEmpty || exercise.id == 'new';
    final successMessage = isCreateExercise
        ? ref.read(appLocalProvider).successfullyCreated(exercise.name)
        : ref.read(appLocalProvider).successfullyUpdated(exercise.name);

    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: successMessage,
      errorToastMessage: (e) => e.toString(),
      future: () async {
        if (isCreateExercise) {
          await exerciseService.createExercise(exercise);
        } else {
          await exerciseService.updateExercise(exercise);
        }
      },
    );
  }
}
