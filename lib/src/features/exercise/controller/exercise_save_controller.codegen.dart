import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_event_handler/ez_event_controller.codegen.dart';
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
    final ezEventPod = ref.read(ezEventControllerProvider.notifier);
    state = const AsyncValue.loading();
    loadingPod.startLoading();

    final exerciseService = ref.read(exerciseServiceProvider);

    state = await AsyncValue.guard(() async {
      if (exercise.id.isEmpty || exercise.id == 'new') {
        await exerciseService.createExercise(exercise);
        await ezEventPod.sendSuccessToast(
          'Successfully created ${exercise.name}.',
        );
      } else {
        await exerciseService.updateExercise(exercise);
        await ezEventPod.sendSuccessToast(
          'Successfully updated ${exercise.name}.',
        );
      }
    }, (e) {
      ezEventPod.sendErrorToast(e.toString());
      return true;
    });
    loadingPod.stopLoading();
  }
}
