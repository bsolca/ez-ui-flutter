// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_technique_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutExerciseTechniqueControllerHash() =>
    r'c3f51c6c93b921c51b43775ee7f6d46091cde974';

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

abstract class _$WorkoutExerciseTechniqueController
    extends BuildlessAutoDisposeAsyncNotifier<TechniqueModel> {
  late final String techniqueId;

  FutureOr<TechniqueModel> build(
    String techniqueId,
  );
}

/// See also [WorkoutExerciseTechniqueController].
@ProviderFor(WorkoutExerciseTechniqueController)
const workoutExerciseTechniqueControllerProvider =
    WorkoutExerciseTechniqueControllerFamily();

/// See also [WorkoutExerciseTechniqueController].
class WorkoutExerciseTechniqueControllerFamily
    extends Family<AsyncValue<TechniqueModel>> {
  /// See also [WorkoutExerciseTechniqueController].
  const WorkoutExerciseTechniqueControllerFamily();

  /// See also [WorkoutExerciseTechniqueController].
  WorkoutExerciseTechniqueControllerProvider call(
    String techniqueId,
  ) {
    return WorkoutExerciseTechniqueControllerProvider(
      techniqueId,
    );
  }

  @override
  WorkoutExerciseTechniqueControllerProvider getProviderOverride(
    covariant WorkoutExerciseTechniqueControllerProvider provider,
  ) {
    return call(
      provider.techniqueId,
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
  String? get name => r'workoutExerciseTechniqueControllerProvider';
}

/// See also [WorkoutExerciseTechniqueController].
class WorkoutExerciseTechniqueControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        WorkoutExerciseTechniqueController, TechniqueModel> {
  /// See also [WorkoutExerciseTechniqueController].
  WorkoutExerciseTechniqueControllerProvider(
    String techniqueId,
  ) : this._internal(
          () => WorkoutExerciseTechniqueController()..techniqueId = techniqueId,
          from: workoutExerciseTechniqueControllerProvider,
          name: r'workoutExerciseTechniqueControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutExerciseTechniqueControllerHash,
          dependencies: WorkoutExerciseTechniqueControllerFamily._dependencies,
          allTransitiveDependencies: WorkoutExerciseTechniqueControllerFamily
              ._allTransitiveDependencies,
          techniqueId: techniqueId,
        );

  WorkoutExerciseTechniqueControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.techniqueId,
  }) : super.internal();

  final String techniqueId;

  @override
  FutureOr<TechniqueModel> runNotifierBuild(
    covariant WorkoutExerciseTechniqueController notifier,
  ) {
    return notifier.build(
      techniqueId,
    );
  }

  @override
  Override overrideWith(WorkoutExerciseTechniqueController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutExerciseTechniqueControllerProvider._internal(
        () => create()..techniqueId = techniqueId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        techniqueId: techniqueId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WorkoutExerciseTechniqueController,
      TechniqueModel> createElement() {
    return _WorkoutExerciseTechniqueControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutExerciseTechniqueControllerProvider &&
        other.techniqueId == techniqueId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, techniqueId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkoutExerciseTechniqueControllerRef
    on AutoDisposeAsyncNotifierProviderRef<TechniqueModel> {
  /// The parameter `techniqueId` of this provider.
  String get techniqueId;
}

class _WorkoutExerciseTechniqueControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        WorkoutExerciseTechniqueController,
        TechniqueModel> with WorkoutExerciseTechniqueControllerRef {
  _WorkoutExerciseTechniqueControllerProviderElement(super.provider);

  @override
  String get techniqueId =>
      (origin as WorkoutExerciseTechniqueControllerProvider).techniqueId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
