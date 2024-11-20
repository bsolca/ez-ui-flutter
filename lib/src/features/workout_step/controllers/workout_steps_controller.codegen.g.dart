// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_steps_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutStepsControllerHash() =>
    r'75649926f20d7cba2c40e4580c4f9b8a0637d3f4';

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

abstract class _$WorkoutStepsController
    extends BuildlessAutoDisposeAsyncNotifier<List<WorkoutStepModel>> {
  late final String workoutId;

  FutureOr<List<WorkoutStepModel>> build(
    String workoutId,
  );
}

/// See also [WorkoutStepsController].
@ProviderFor(WorkoutStepsController)
const workoutStepsControllerProvider = WorkoutStepsControllerFamily();

/// See also [WorkoutStepsController].
class WorkoutStepsControllerFamily
    extends Family<AsyncValue<List<WorkoutStepModel>>> {
  /// See also [WorkoutStepsController].
  const WorkoutStepsControllerFamily();

  /// See also [WorkoutStepsController].
  WorkoutStepsControllerProvider call(
    String workoutId,
  ) {
    return WorkoutStepsControllerProvider(
      workoutId,
    );
  }

  @override
  WorkoutStepsControllerProvider getProviderOverride(
    covariant WorkoutStepsControllerProvider provider,
  ) {
    return call(
      provider.workoutId,
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
  String? get name => r'workoutStepsControllerProvider';
}

/// See also [WorkoutStepsController].
class WorkoutStepsControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WorkoutStepsController,
        List<WorkoutStepModel>> {
  /// See also [WorkoutStepsController].
  WorkoutStepsControllerProvider(
    String workoutId,
  ) : this._internal(
          () => WorkoutStepsController()..workoutId = workoutId,
          from: workoutStepsControllerProvider,
          name: r'workoutStepsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutStepsControllerHash,
          dependencies: WorkoutStepsControllerFamily._dependencies,
          allTransitiveDependencies:
              WorkoutStepsControllerFamily._allTransitiveDependencies,
          workoutId: workoutId,
        );

  WorkoutStepsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workoutId,
  }) : super.internal();

  final String workoutId;

  @override
  FutureOr<List<WorkoutStepModel>> runNotifierBuild(
    covariant WorkoutStepsController notifier,
  ) {
    return notifier.build(
      workoutId,
    );
  }

  @override
  Override overrideWith(WorkoutStepsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutStepsControllerProvider._internal(
        () => create()..workoutId = workoutId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workoutId: workoutId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WorkoutStepsController,
      List<WorkoutStepModel>> createElement() {
    return _WorkoutStepsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutStepsControllerProvider &&
        other.workoutId == workoutId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workoutId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutStepsControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<WorkoutStepModel>> {
  /// The parameter `workoutId` of this provider.
  String get workoutId;
}

class _WorkoutStepsControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WorkoutStepsController,
        List<WorkoutStepModel>> with WorkoutStepsControllerRef {
  _WorkoutStepsControllerProviderElement(super.provider);

  @override
  String get workoutId => (origin as WorkoutStepsControllerProvider).workoutId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
