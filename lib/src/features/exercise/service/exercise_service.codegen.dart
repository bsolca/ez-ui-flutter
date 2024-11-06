import 'package:ez_fit_app/src/features/exercise/data/exercise_repository.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_service.codegen.g.dart';

class ExerciseService {
  const ExerciseService(
    ExerciseRepository exerciseRepository,
  ) : _exerciseRepository = exerciseRepository;

  final ExerciseRepository _exerciseRepository;

  Future<List<ExerciseModel>> getExercises() async {
    return _exerciseRepository.getExercises();
  }

  Future<ExerciseModel?> getExerciseById(String id) async {
    return _exerciseRepository.getExerciseById(id);
  }
}

@riverpod
ExerciseService exerciseService(ExerciseServiceRef ref) {
  final exerciseRepository = ref.watch(exerciseRepositoryProvider);

  return ExerciseService(exerciseRepository);
}
