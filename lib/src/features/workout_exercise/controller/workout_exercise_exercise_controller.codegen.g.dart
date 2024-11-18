// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_exercise_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutExerciseExerciseControllerHash() =>
    r'32eb8bafdee494b61e800e7ea4be9e3ed545052d';

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

abstract class _$WorkoutExerciseExerciseController
    extends BuildlessAutoDisposeAsyncNotifier<ExerciseModel> {
  late final String exerciseId;

  FutureOr<ExerciseModel> build(
    String exerciseId,
  );
}

/// See also [WorkoutExerciseExerciseController].
@ProviderFor(WorkoutExerciseExerciseController)
const workoutExerciseExerciseControllerProvider =
    WorkoutExerciseExerciseControllerFamily();

/// See also [WorkoutExerciseExerciseController].
class WorkoutExerciseExerciseControllerFamily
    extends Family<AsyncValue<ExerciseModel>> {
  /// See also [WorkoutExerciseExerciseController].
  const WorkoutExerciseExerciseControllerFamily();

  /// See also [WorkoutExerciseExerciseController].
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

/// See also [WorkoutExerciseExerciseController].
class WorkoutExerciseExerciseControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        WorkoutExerciseExerciseController, ExerciseModel> {
  /// See also [WorkoutExerciseExerciseController].
  WorkoutExerciseExerciseControllerProvider(
    String exerciseId,
  ) : this._internal(
          () => WorkoutExerciseExerciseController()..exerciseId = exerciseId,
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
  FutureOr<ExerciseModel> runNotifierBuild(
    covariant WorkoutExerciseExerciseController notifier,
  ) {
    return notifier.build(
      exerciseId,
    );
  }

  @override
  Override overrideWith(WorkoutExerciseExerciseController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutExerciseExerciseControllerProvider._internal(
        () => create()..exerciseId = exerciseId,
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
  AutoDisposeAsyncNotifierProviderElement<WorkoutExerciseExerciseController,
      ExerciseModel> createElement() {
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
    on AutoDisposeAsyncNotifierProviderRef<ExerciseModel> {
  /// The parameter `exerciseId` of this provider.
  String get exerciseId;
}

class _WorkoutExerciseExerciseControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        WorkoutExerciseExerciseController,
        ExerciseModel> with WorkoutExerciseExerciseControllerRef {
  _WorkoutExerciseExerciseControllerProviderElement(super.provider);

  @override
  String get exerciseId =>
      (origin as WorkoutExerciseExerciseControllerProvider).exerciseId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
