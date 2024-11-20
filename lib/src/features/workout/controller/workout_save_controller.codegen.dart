import 'package:ez_fit_app/src/features/workout/controller/workout_form_controller.codegen.dart';
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
  Future<void> saveWorkout(String workoutId) async {
    final form = ref
        .read(
          workoutFormControllerProvider(workoutId: workoutId),
        )
        .value;

    if (form == null) {
      throw Exception('Form is null');
    }

    final workoutService = ref.read(
      workoutFormControllerProvider(workoutId: form.workout.id).notifier,
    );
    final isCreateWorkout = form.workout.id.isEmpty || form.workout.id == 'new';
    final successMessage = isCreateWorkout
        ? ref.read(appLocalProvider).successfullyCreated(form.workout.name)
        : ref.read(appLocalProvider).successfullyUpdated(form.workout.name);

    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: successMessage,
      errorToastMessage: (e) => e.toString(),
      operation: () async {
        await workoutService.saveFullWorkout();
      },
    );
  }
}
