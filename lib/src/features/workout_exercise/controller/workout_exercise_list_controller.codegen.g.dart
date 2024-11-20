// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_list_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutExerciseListControllerHash() =>
    r'd9459443e354622648548a8a4c07eb866ec08493';

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
  late final String workoutId;
  late final String stepId;

  FutureOr<List<WorkoutExerciseModel>?> build({
    required String workoutId,
    required String stepId,
  });
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
  WorkoutExerciseListControllerProvider call({
    required String workoutId,
    required String stepId,
  }) {
    return WorkoutExerciseListControllerProvider(
      workoutId: workoutId,
      stepId: stepId,
    );
  }

  @override
  WorkoutExerciseListControllerProvider getProviderOverride(
    covariant WorkoutExerciseListControllerProvider provider,
  ) {
    return call(
      workoutId: provider.workoutId,
      stepId: provider.stepId,
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
  WorkoutExerciseListControllerProvider({
    required String workoutId,
    required String stepId,
  }) : this._internal(
          () => WorkoutExerciseListController()
            ..workoutId = workoutId
            ..stepId = stepId,
          from: workoutExerciseListControllerProvider,
          name: r'workoutExerciseListControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutExerciseListControllerHash,
          dependencies: WorkoutExerciseListControllerFamily._dependencies,
          allTransitiveDependencies:
              WorkoutExerciseListControllerFamily._allTransitiveDependencies,
          workoutId: workoutId,
          stepId: stepId,
        );

  WorkoutExerciseListControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workoutId,
    required this.stepId,
  }) : super.internal();

  final String workoutId;
  final String stepId;

  @override
  FutureOr<List<WorkoutExerciseModel>?> runNotifierBuild(
    covariant WorkoutExerciseListController notifier,
  ) {
    return notifier.build(
      workoutId: workoutId,
      stepId: stepId,
    );
  }

  @override
  Override overrideWith(WorkoutExerciseListController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutExerciseListControllerProvider._internal(
        () => create()
          ..workoutId = workoutId
          ..stepId = stepId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workoutId: workoutId,
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
        other.workoutId == workoutId &&
        other.stepId == stepId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workoutId.hashCode);
    hash = _SystemHash.combine(hash, stepId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutExerciseListControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<WorkoutExerciseModel>?> {
  /// The parameter `workoutId` of this provider.
  String get workoutId;

  /// The parameter `stepId` of this provider.
  String get stepId;
}

class _WorkoutExerciseListControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        WorkoutExerciseListController,
        List<WorkoutExerciseModel>?> with WorkoutExerciseListControllerRef {
  _WorkoutExerciseListControllerProviderElement(super.provider);

  @override
  String get workoutId =>
      (origin as WorkoutExerciseListControllerProvider).workoutId;
  @override
  String get stepId => (origin as WorkoutExerciseListControllerProvider).stepId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
