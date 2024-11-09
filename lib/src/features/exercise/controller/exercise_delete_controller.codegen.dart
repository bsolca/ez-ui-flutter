import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_delete_controller.codegen.g.dart';

/// Controller specifically for handling deletion of exercises.
@riverpod
class ExerciseDeleteController extends _$ExerciseDeleteController {
  @override
  Future<void> build() async {
    // Initial setup if needed; otherwise, no action needed on build.
  }

  /// Delete a specific exercise by its ID.
  Future<void> deleteExercise(String id) async {
    state = const AsyncValue.loading();
    final exerciseService = ref.read(exerciseServiceProvider);

    state = await AsyncValue.guard(() async {
      await exerciseService.deleteExercise(id);
    });
  }
}
