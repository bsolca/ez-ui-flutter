
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/service/exercise_service.codegen.dart';
import 'package:ez_fit_app/src/features/user_fake/model/user_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_list_controller.codegen.g.dart';

/// Controller for the [UserModel].
@riverpod
class ExerciseListController extends _$ExerciseListController {
  @override
  Future<List<ExerciseModel>> build() {
    final userService = ref.read(exerciseServiceProvider);
    return userService.getExercises();
  }
}
