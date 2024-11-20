// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_form_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutFormControllerHash() =>
    r'fc6dc6b61d40f2bc2d304f1bef9b36cc266b5b47';

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

abstract class _$WorkoutFormController
    extends BuildlessAutoDisposeAsyncNotifier<WorkoutFormModel> {
  late final String workoutId;

  FutureOr<WorkoutFormModel> build({
    required String workoutId,
  });
}

/// See also [WorkoutFormController].
@ProviderFor(WorkoutFormController)
const workoutFormControllerProvider = WorkoutFormControllerFamily();

/// See also [WorkoutFormController].
class WorkoutFormControllerFamily extends Family<AsyncValue<WorkoutFormModel>> {
  /// See also [WorkoutFormController].
  const WorkoutFormControllerFamily();

  /// See also [WorkoutFormController].
  WorkoutFormControllerProvider call({
    required String workoutId,
  }) {
    return WorkoutFormControllerProvider(
      workoutId: workoutId,
    );
  }

  @override
  WorkoutFormControllerProvider getProviderOverride(
    covariant WorkoutFormControllerProvider provider,
  ) {
    return call(
      workoutId: provider.workoutId,
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
  String? get name => r'workoutFormControllerProvider';
}

/// See also [WorkoutFormController].
class WorkoutFormControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WorkoutFormController,
        WorkoutFormModel> {
  /// See also [WorkoutFormController].
  WorkoutFormControllerProvider({
    required String workoutId,
  }) : this._internal(
          () => WorkoutFormController()..workoutId = workoutId,
          from: workoutFormControllerProvider,
          name: r'workoutFormControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workoutFormControllerHash,
          dependencies: WorkoutFormControllerFamily._dependencies,
          allTransitiveDependencies:
              WorkoutFormControllerFamily._allTransitiveDependencies,
          workoutId: workoutId,
        );

  WorkoutFormControllerProvider._internal(
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
  FutureOr<WorkoutFormModel> runNotifierBuild(
    covariant WorkoutFormController notifier,
  ) {
    return notifier.build(
      workoutId: workoutId,
    );
  }

  @override
  Override overrideWith(WorkoutFormController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkoutFormControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<WorkoutFormController,
      WorkoutFormModel> createElement() {
    return _WorkoutFormControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutFormControllerProvider &&
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
mixin WorkoutFormControllerRef
    on AutoDisposeAsyncNotifierProviderRef<WorkoutFormModel> {
  /// The parameter `workoutId` of this provider.
  String get workoutId;
}

class _WorkoutFormControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WorkoutFormController,
        WorkoutFormModel> with WorkoutFormControllerRef {
  _WorkoutFormControllerProviderElement(super.provider);

  @override
  String get workoutId => (origin as WorkoutFormControllerProvider).workoutId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
