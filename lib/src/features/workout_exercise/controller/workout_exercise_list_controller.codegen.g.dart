// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_list_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutExerciseListControllerHash() =>
    r'45612e34057ed0c5b2883683619c1cd325d75727';

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

abstract class _$WorkoutExerciseListController
    extends BuildlessAutoDisposeAsyncNotifier<List<WorkoutExerciseModel>?> {
  late final String stepId;

  FutureOr<List<WorkoutExerciseModel>?> build(
    String stepId,
  );
}

/// See also [WorkoutExerciseListController].
@ProviderFor(WorkoutExerciseListController)
const workoutExerciseListControllerProvider =
    WorkoutExerciseListControllerFamily();

/// See also [WorkoutExerciseListController].
class WorkoutExerciseListControllerFamily
    extends Family<AsyncValue<List<WorkoutExerciseModel>?>> {
  /// See also [WorkoutExerciseListController].
  const WorkoutExerciseListControllerFamily();

  /// See also [WorkoutExerciseListController].
  WorkoutExerciseListControllerProvider call(
    String stepId,
  ) {
    return WorkoutExerciseListControllerProvider(
      stepId,
    );
  }

  @override
  WorkoutExerciseListControllerProvider getProviderOverride(
    covariant WorkoutExerciseListControllerProvider provider,
  ) {
    return call(
      provider.stepId,
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
  String? get name => r'workoutExerciseListControllerProvider';
}

/// See also [WorkoutExerciseListController].
class WorkoutExerciseListControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WorkoutExerciseListController,
        List<WorkoutExerciseModel>?> {
  /// See also [WorkoutExerciseListController].
  WorkoutExerciseListControllerProvider(
    String stepId,
  ) : this._internal(
          () => WorkoutExerciseListController()..stepId = stepId,
          from: workoutExerciseListControllerProvider,
          name: r'workoutExerciseListControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutExerciseListControllerHash,
          dependencies: WorkoutExerciseListControllerFamily._dependencies,
          allTransitiveDependencies:
              WorkoutExerciseListControllerFamily._allTransitiveDependencies,
          stepId: stepId,
        );

  WorkoutExerciseListControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stepId,
  }) : super.internal();

  final String stepId;

  @override
  FutureOr<List<WorkoutExerciseModel>?> runNotifierBuild(
    covariant WorkoutExerciseListController notifier,
  ) {
    return notifier.build(
      stepId,
    );
  }

  @override
  Override overrideWith(WorkoutExerciseListController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutExerciseListControllerProvider._internal(
        () => create()..stepId = stepId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stepId: stepId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WorkoutExerciseListController,
      List<WorkoutExerciseModel>?> createElement() {
    return _WorkoutExerciseListControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutExerciseListControllerProvider &&
        other.stepId == stepId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stepId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutExerciseListControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<WorkoutExerciseModel>?> {
  /// The parameter `stepId` of this provider.
  String get stepId;
}

class _WorkoutExerciseListControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        WorkoutExerciseListController,
        List<WorkoutExerciseModel>?> with WorkoutExerciseListControllerRef {
  _WorkoutExerciseListControllerProviderElement(super.provider);

  @override
  String get stepId => (origin as WorkoutExerciseListControllerProvider).stepId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
