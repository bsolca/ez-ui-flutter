import 'package:ez_fit_app/src/features/workout/service/workout_service.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_async_value/ez_async_value.dart';
import 'package:ez_fit_app/src/utils/localization/app_local.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_delete_controller.codegen.g.dart';

/// Controller specifically for handling deletion of workouts.
@riverpod
class WorkoutDeleteController extends _$WorkoutDeleteController {
  @override
  Future<void> build() async {
    // Initial setup if needed; otherwise, no action needed on build.
  }

  /// Delete a specific workout by its ID.
  Future<void> deleteWorkout(String id, String name) async {
    state = const AsyncValue.loading();
    state = await EzAsyncValue.guard(
      ref: ref,
      successToastMessage: ref.read(appLocalProvider).successfullyDeleted(name),
      errorToastMessage: (e) => e.toString(),
      future: () async {
        await ref.read(workoutServiceProvider).deleteWorkout(id);
      },
    );
  }
}
