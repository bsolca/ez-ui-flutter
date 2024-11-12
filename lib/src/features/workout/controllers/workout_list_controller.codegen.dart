import 'package:ez_fit_app/src/features/workout/model/workout_model.codegen.dart';
import 'package:ez_fit_app/src/features/workout/service/workout_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_list_controller.codegen.g.dart';

@riverpod
class WorkoutListController extends _$WorkoutListController {
  @override
  Future<List<WorkoutModel>> build() {
    final userService = ref.read(workoutServiceProvider);
    return userService.getWorkouts();
  }
}
