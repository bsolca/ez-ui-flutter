// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutExerciseControllerHash() =>
    r'8e44cc094e9c6ff983e5a0ce14955fae8626eace';

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

abstract class _$WorkoutExerciseController
    extends BuildlessAutoDisposeAsyncNotifier<WorkoutExerciseModel?> {
  late final String exerciseId;

  FutureOr<WorkoutExerciseModel?> build(
    String exerciseId,
  );
}

/// Controller specifically for handling saving or updating workout exercises.
///
/// Copied from [WorkoutExerciseController].
@ProviderFor(WorkoutExerciseController)
const workoutExerciseControllerProvider = WorkoutExerciseControllerFamily();

/// Controller specifically for handling saving or updating workout exercises.
///
/// Copied from [WorkoutExerciseController].
class WorkoutExerciseControllerFamily
    extends Family<AsyncValue<WorkoutExerciseModel?>> {
  /// Controller specifically for handling saving or updating workout exercises.
  ///
  /// Copied from [WorkoutExerciseController].
  const WorkoutExerciseControllerFamily();

  /// Controller specifically for handling saving or updating workout exercises.
  ///
  /// Copied from [WorkoutExerciseController].
  WorkoutExerciseControllerProvider call(
    String exerciseId,
  ) {
    return WorkoutExerciseControllerProvider(
      exerciseId,
    );
  }

  @override
  WorkoutExerciseControllerProvider getProviderOverride(
    covariant WorkoutExerciseControllerProvider provider,
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
  String? get name => r'workoutExerciseControllerProvider';
}

/// Controller specifically for handling saving or updating workout exercises.
///
/// Copied from [WorkoutExerciseController].
class WorkoutExerciseControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WorkoutExerciseController,
        WorkoutExerciseModel?> {
  /// Controller specifically for handling saving or updating workout exercises.
  ///
  /// Copied from [WorkoutExerciseController].
  WorkoutExerciseControllerProvider(
    String exerciseId,
  ) : this._internal(
          () => WorkoutExerciseController()..exerciseId = exerciseId,
          from: workoutExerciseControllerProvider,
          name: r'workoutExerciseControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutExerciseControllerHash,
          dependencies: WorkoutExerciseControllerFamily._dependencies,
          allTransitiveDependencies:
              WorkoutExerciseControllerFamily._allTransitiveDependencies,
          exerciseId: exerciseId,
        );

  WorkoutExerciseControllerProvider._internal(
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
  FutureOr<WorkoutExerciseModel?> runNotifierBuild(
    covariant WorkoutExerciseController notifier,
  ) {
    return notifier.build(
      exerciseId,
    );
  }

  @override
  Override overrideWith(WorkoutExerciseController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutExerciseControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<WorkoutExerciseController,
      WorkoutExerciseModel?> createElement() {
    return _WorkoutExerciseControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutExerciseControllerProvider &&
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
mixin WorkoutExerciseControllerRef
    on AutoDisposeAsyncNotifierProviderRef<WorkoutExerciseModel?> {
  /// The parameter `exerciseId` of this provider.
  String get exerciseId;
}

class _WorkoutExerciseControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WorkoutExerciseController,
        WorkoutExerciseModel?> with WorkoutExerciseControllerRef {
  _WorkoutExerciseControllerProviderElement(super.provider);

  @override
  String get exerciseId =>
      (origin as WorkoutExerciseControllerProvider).exerciseId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
