// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_exercise_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutExerciseExerciseControllerHash() =>
    r'69e12afa386bca157312f857fca01c7d63c8c33a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [workoutExerciseExerciseController].
@ProviderFor(workoutExerciseExerciseController)
const workoutExerciseExerciseControllerProvider =
    WorkoutExerciseExerciseControllerFamily();

/// See also [workoutExerciseExerciseController].
class WorkoutExerciseExerciseControllerFamily
    extends Family<AsyncValue<ExerciseModel>> {
  /// See also [workoutExerciseExerciseController].
  const WorkoutExerciseExerciseControllerFamily();

  /// See also [workoutExerciseExerciseController].
  WorkoutExerciseExerciseControllerProvider call(
    String exerciseId,
  ) {
    return WorkoutExerciseExerciseControllerProvider(
      exerciseId,
    );
  }

  @override
  WorkoutExerciseExerciseControllerProvider getProviderOverride(
    covariant WorkoutExerciseExerciseControllerProvider provider,
  ) {
    return call(
      provider.exerciseId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'workoutExerciseExerciseControllerProvider';
}

/// See also [workoutExerciseExerciseController].
class WorkoutExerciseExerciseControllerProvider
    extends AutoDisposeFutureProvider<ExerciseModel> {
  /// See also [workoutExerciseExerciseController].
  WorkoutExerciseExerciseControllerProvider(
    String exerciseId,
  ) : this._internal(
          (ref) => workoutExerciseExerciseController(
            ref as WorkoutExerciseExerciseControllerRef,
            exerciseId,
          ),
          from: workoutExerciseExerciseControllerProvider,
          name: r'workoutExerciseExerciseControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutExerciseExerciseControllerHash,
          dependencies: WorkoutExerciseExerciseControllerFamily._dependencies,
          allTransitiveDependencies: WorkoutExerciseExerciseControllerFamily
              ._allTransitiveDependencies,
          exerciseId: exerciseId,
        );

  WorkoutExerciseExerciseControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.exerciseId,
  }) : super.internal();

  final String exerciseId;

  @override
  Override overrideWith(
    FutureOr<ExerciseModel> Function(
            WorkoutExerciseExerciseControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WorkoutExerciseExerciseControllerProvider._internal(
        (ref) => create(ref as WorkoutExerciseExerciseControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        exerciseId: exerciseId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ExerciseModel> createElement() {
    return _WorkoutExerciseExerciseControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutExerciseExerciseControllerProvider &&
        other.exerciseId == exerciseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, exerciseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutExerciseExerciseControllerRef
    on AutoDisposeFutureProviderRef<ExerciseModel> {
  /// The parameter `exerciseId` of this provider.
  String get exerciseId;
}

class _WorkoutExerciseExerciseControllerProviderElement
    extends AutoDisposeFutureProviderElement<ExerciseModel>
    with WorkoutExerciseExerciseControllerRef {
  _WorkoutExerciseExerciseControllerProviderElement(super.provider);

  @override
  String get exerciseId =>
      (origin as WorkoutExerciseExerciseControllerProvider).exerciseId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
