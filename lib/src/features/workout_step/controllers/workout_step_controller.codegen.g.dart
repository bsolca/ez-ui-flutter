// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_step_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutStepControllerHash() =>
    r'c319b5e38426a7a70c95488e04625357f5d2826b';

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

abstract class _$WorkoutStepController
    extends BuildlessAutoDisposeNotifier<WorkoutStepModel> {
  late final String workoutId;
  late final String workoutStepId;

  WorkoutStepModel build({
    required String workoutId,
    required String workoutStepId,
  });
}

/// See also [WorkoutStepController].
@ProviderFor(WorkoutStepController)
const workoutStepControllerProvider = WorkoutStepControllerFamily();

/// See also [WorkoutStepController].
class WorkoutStepControllerFamily extends Family<WorkoutStepModel> {
  /// See also [WorkoutStepController].
  const WorkoutStepControllerFamily();

  /// See also [WorkoutStepController].
  WorkoutStepControllerProvider call({
    required String workoutId,
    required String workoutStepId,
  }) {
    return WorkoutStepControllerProvider(
      workoutId: workoutId,
      workoutStepId: workoutStepId,
    );
  }

  @override
  WorkoutStepControllerProvider getProviderOverride(
    covariant WorkoutStepControllerProvider provider,
  ) {
    return call(
      workoutId: provider.workoutId,
      workoutStepId: provider.workoutStepId,
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
  String? get name => r'workoutStepControllerProvider';
}

/// See also [WorkoutStepController].
class WorkoutStepControllerProvider extends AutoDisposeNotifierProviderImpl<
    WorkoutStepController, WorkoutStepModel> {
  /// See also [WorkoutStepController].
  WorkoutStepControllerProvider({
    required String workoutId,
    required String workoutStepId,
  }) : this._internal(
          () => WorkoutStepController()
            ..workoutId = workoutId
            ..workoutStepId = workoutStepId,
          from: workoutStepControllerProvider,
          name: r'workoutStepControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutStepControllerHash,
          dependencies: WorkoutStepControllerFamily._dependencies,
          allTransitiveDependencies:
              WorkoutStepControllerFamily._allTransitiveDependencies,
          workoutId: workoutId,
          workoutStepId: workoutStepId,
        );

  WorkoutStepControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workoutId,
    required this.workoutStepId,
  }) : super.internal();

  final String workoutId;
  final String workoutStepId;

  @override
  WorkoutStepModel runNotifierBuild(
    covariant WorkoutStepController notifier,
  ) {
    return notifier.build(
      workoutId: workoutId,
      workoutStepId: workoutStepId,
    );
  }

  @override
  Override overrideWith(WorkoutStepController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutStepControllerProvider._internal(
        () => create()
          ..workoutId = workoutId
          ..workoutStepId = workoutStepId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workoutId: workoutId,
        workoutStepId: workoutStepId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<WorkoutStepController, WorkoutStepModel>
      createElement() {
    return _WorkoutStepControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutStepControllerProvider &&
        other.workoutId == workoutId &&
        other.workoutStepId == workoutStepId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workoutId.hashCode);
    hash = _SystemHash.combine(hash, workoutStepId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutStepControllerRef
    on AutoDisposeNotifierProviderRef<WorkoutStepModel> {
  /// The parameter `workoutId` of this provider.
  String get workoutId;

  /// The parameter `workoutStepId` of this provider.
  String get workoutStepId;
}

class _WorkoutStepControllerProviderElement
    extends AutoDisposeNotifierProviderElement<WorkoutStepController,
        WorkoutStepModel> with WorkoutStepControllerRef {
  _WorkoutStepControllerProviderElement(super.provider);

  @override
  String get workoutId => (origin as WorkoutStepControllerProvider).workoutId;
  @override
  String get workoutStepId =>
      (origin as WorkoutStepControllerProvider).workoutStepId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
