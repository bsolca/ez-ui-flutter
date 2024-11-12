import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/service/workout_service.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_screen_get_workout_controller.codegen.g.dart';

@riverpod
Future<WorkoutModel?> Function()? workoutScreenGetWorkoutController(
  Ref ref,
  String? id,
) {
  final service = ref.watch(workoutServiceProvider);

  if (id == null || id.isEmpty || id == 'new') {
    return null;
  }

  return () => service.getWorkoutById(id);
}