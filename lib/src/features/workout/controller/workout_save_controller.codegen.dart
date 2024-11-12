import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/service/workout_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:ez_fit_app/src/utils/localization/app_local.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_save_controller.codegen.g.dart';

/// Controller specifically for handling saving or updating workouts.
@riverpod
class WorkoutSaveController extends _$WorkoutSaveController {
  @override
  Future<void> build() async {
    // Initial setup if needed; otherwise, no action needed on build.
  }

  /// Save or update a specific workout.
  Future<void> saveWorkout(WorkoutModel workout) async {
    final workoutService = ref.read(workoutServiceProvider);
    final isCreateWorkout = workout.id.isEmpty || workout.id == 'new';
    final successMessage = isCreateWorkout
        ? ref.read(appLocalProvider).successfullyCreated(workout.name)
        : ref.read(appLocalProvider).successfullyUpdated(workout.name);

    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: successMessage,
      errorToastMessage: (e) => e.toString(),
      future: () async {
        if (isCreateWorkout) {
          await workoutService.createWorkout(workout);
        } else {
          await workoutService.updateWorkout(workout);
        }
      },
    );
  }
}
