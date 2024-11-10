import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
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
    final loadingPod = ref.read(loadingControllerProvider.notifier);
    state = const AsyncValue.loading();
    loadingPod.startLoading();

    final exerciseService = ref.read(exerciseServiceProvider);

    try {
      state = await AsyncValue.guard(() async {
        if (exercise.id.isEmpty || exercise.id == 'new') {
          await exerciseService.createExercise(exercise);
        } else {
          await exerciseService.updateExercise(exercise);
        }
      });
    } finally {
      loadingPod.stopLoading();
    }
  }
}
