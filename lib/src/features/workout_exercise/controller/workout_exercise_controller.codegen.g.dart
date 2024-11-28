// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutExerciseControllerHash() =>
    r'2c8c509c4604266fcfe33adbfe246749ee6140d7';

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
    extends BuildlessAutoDisposeNotifier<WorkoutExerciseModel> {
  late final String workoutId;
  late final String exerciseId;

  WorkoutExerciseModel build({
    required String workoutId,
    required String exerciseId,
  });
}

/// Controller specifically for handling saving or updating workout exercises.
///
/// Copied from [WorkoutExerciseController].
@ProviderFor(WorkoutExerciseController)
const workoutExerciseControllerProvider = WorkoutExerciseControllerFamily();

/// Controller specifically for handling saving or updating workout exercises.
///
/// Copied from [WorkoutExerciseController].
class WorkoutExerciseControllerFamily extends Family<WorkoutExerciseModel> {
  /// Controller specifically for handling saving or updating workout exercises.
  ///
  /// Copied from [WorkoutExerciseController].
  const WorkoutExerciseControllerFamily();

  /// Controller specifically for handling saving or updating workout exercises.
  ///
  /// Copied from [WorkoutExerciseController].
  WorkoutExerciseControllerProvider call({
    required String workoutId,
    required String exerciseId,
  }) {
    return WorkoutExerciseControllerProvider(
      workoutId: workoutId,
      exerciseId: exerciseId,
    );
  }

  @override
  WorkoutExerciseControllerProvider getProviderOverride(
    covariant WorkoutExerciseControllerProvider provider,
  ) {
    return call(
      workoutId: provider.workoutId,
      exerciseId: provider.exerciseId,
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
class WorkoutExerciseControllerProvider extends AutoDisposeNotifierProviderImpl<
    WorkoutExerciseController, WorkoutExerciseModel> {
  /// Controller specifically for handling saving or updating workout exercises.
  ///
  /// Copied from [WorkoutExerciseController].
  WorkoutExerciseControllerProvider({
    required String workoutId,
    required String exerciseId,
  }) : this._internal(
          () => WorkoutExerciseController()
            ..workoutId = workoutId
            ..exerciseId = exerciseId,
          from: workoutExerciseControllerProvider,
          name: r'workoutExerciseControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutExerciseControllerHash,
          dependencies: WorkoutExerciseControllerFamily._dependencies,
          allTransitiveDependencies:
              WorkoutExerciseControllerFamily._allTransitiveDependencies,
          workoutId: workoutId,
          exerciseId: exerciseId,
        );

  WorkoutExerciseControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workoutId,
    required this.exerciseId,
  }) : super.internal();

  final String workoutId;
  final String exerciseId;

  @override
  WorkoutExerciseModel runNotifierBuild(
    covariant WorkoutExerciseController notifier,
  ) {
    return notifier.build(
      workoutId: workoutId,
      exerciseId: exerciseId,
    );
  }

  @override
  Override overrideWith(WorkoutExerciseController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutExerciseControllerProvider._internal(
        () => create()
          ..workoutId = workoutId
          ..exerciseId = exerciseId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workoutId: workoutId,
        exerciseId: exerciseId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<WorkoutExerciseController,
      WorkoutExerciseModel> createElement() {
    return _WorkoutExerciseControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutExerciseControllerProvider &&
        other.workoutId == workoutId &&
        other.exerciseId == exerciseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workoutId.hashCode);
    hash = _SystemHash.combine(hash, exerciseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutExerciseControllerRef
    on AutoDisposeNotifierProviderRef<WorkoutExerciseModel> {
  /// The parameter `workoutId` of this provider.
  String get workoutId;

  /// The parameter `exerciseId` of this provider.
  String get exerciseId;
}

class _WorkoutExerciseControllerProviderElement
    extends AutoDisposeNotifierProviderElement<WorkoutExerciseController,
        WorkoutExerciseModel> with WorkoutExerciseControllerRef {
  _WorkoutExerciseControllerProviderElement(super.provider);

  @override
  String get workoutId =>
      (origin as WorkoutExerciseControllerProvider).workoutId;
  @override
  String get exerciseId =>
      (origin as WorkoutExerciseControllerProvider).exerciseId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
