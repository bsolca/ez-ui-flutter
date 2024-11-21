import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/service/technique_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workout_exercise_technique_controller.codegen.g.dart';

@riverpod
class WorkoutExerciseTechniqueController
    extends _$WorkoutExerciseTechniqueController {
  @override
  Future<TechniqueModel> build({required String techniqueId}) async {
    return ref.watch(techniqueServiceProvider).getTechniqueById(techniqueId);
  }
}
