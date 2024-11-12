// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_screen_get_workout_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutScreenGetWorkoutControllerHash() =>
    r'69e1a459e3e52caa47e76a4201493df07a6c224b';

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

/// See also [workoutScreenGetWorkoutController].
@ProviderFor(workoutScreenGetWorkoutController)
const workoutScreenGetWorkoutControllerProvider =
    WorkoutScreenGetWorkoutControllerFamily();

/// See also [workoutScreenGetWorkoutController].
class WorkoutScreenGetWorkoutControllerFamily
    extends Family<Future<WorkoutModel?> Function()?> {
  /// See also [workoutScreenGetWorkoutController].
  const WorkoutScreenGetWorkoutControllerFamily();

  /// See also [workoutScreenGetWorkoutController].
  WorkoutScreenGetWorkoutControllerProvider call(
    String? id,
  ) {
    return WorkoutScreenGetWorkoutControllerProvider(
      id,
    );
  }

  @override
  WorkoutScreenGetWorkoutControllerProvider getProviderOverride(
    covariant WorkoutScreenGetWorkoutControllerProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'workoutScreenGetWorkoutControllerProvider';
}

/// See also [workoutScreenGetWorkoutController].
class WorkoutScreenGetWorkoutControllerProvider
    extends AutoDisposeProvider<Future<WorkoutModel?> Function()?> {
  /// See also [workoutScreenGetWorkoutController].
  WorkoutScreenGetWorkoutControllerProvider(
    String? id,
  ) : this._internal(
          (ref) => workoutScreenGetWorkoutController(
            ref as WorkoutScreenGetWorkoutControllerRef,
            id,
          ),
          from: workoutScreenGetWorkoutControllerProvider,
          name: r'workoutScreenGetWorkoutControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutScreenGetWorkoutControllerHash,
          dependencies: WorkoutScreenGetWorkoutControllerFamily._dependencies,
          allTransitiveDependencies: WorkoutScreenGetWorkoutControllerFamily
              ._allTransitiveDependencies,
          id: id,
        );

  WorkoutScreenGetWorkoutControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String? id;

  @override
  Override overrideWith(
    Future<WorkoutModel?> Function()? Function(
            WorkoutScreenGetWorkoutControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WorkoutScreenGetWorkoutControllerProvider._internal(
        (ref) => create(ref as WorkoutScreenGetWorkoutControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Future<WorkoutModel?> Function()?>
      createElement() {
    return _WorkoutScreenGetWorkoutControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutScreenGetWorkoutControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutScreenGetWorkoutControllerRef
    on AutoDisposeProviderRef<Future<WorkoutModel?> Function()?> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _WorkoutScreenGetWorkoutControllerProviderElement
    extends AutoDisposeProviderElement<Future<WorkoutModel?> Function()?>
    with WorkoutScreenGetWorkoutControllerRef {
  _WorkoutScreenGetWorkoutControllerProviderElement(super.provider);

  @override
  String? get id => (origin as WorkoutScreenGetWorkoutControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
