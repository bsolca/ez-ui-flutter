// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercises_screen_get_exercise_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exercisesScreenGetExerciseControllerHash() =>
    r'ec3c0088fe918bbf3933a1071151d07f9bc7197a';

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

/// See also [exercisesScreenGetExerciseController].
@ProviderFor(exercisesScreenGetExerciseController)
const exercisesScreenGetExerciseControllerProvider =
    ExercisesScreenGetExerciseControllerFamily();

/// See also [exercisesScreenGetExerciseController].
class ExercisesScreenGetExerciseControllerFamily
    extends Family<Future<ExerciseModel?> Function()?> {
  /// See also [exercisesScreenGetExerciseController].
  const ExercisesScreenGetExerciseControllerFamily();

  /// See also [exercisesScreenGetExerciseController].
  ExercisesScreenGetExerciseControllerProvider call(
    String? id,
  ) {
    return ExercisesScreenGetExerciseControllerProvider(
      id,
    );
  }

  @override
  ExercisesScreenGetExerciseControllerProvider getProviderOverride(
    covariant ExercisesScreenGetExerciseControllerProvider provider,
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
  String? get name => r'exercisesScreenGetExerciseControllerProvider';
}

/// See also [exercisesScreenGetExerciseController].
class ExercisesScreenGetExerciseControllerProvider
    extends AutoDisposeProvider<Future<ExerciseModel?> Function()?> {
  /// See also [exercisesScreenGetExerciseController].
  ExercisesScreenGetExerciseControllerProvider(
    String? id,
  ) : this._internal(
          (ref) => exercisesScreenGetExerciseController(
            ref as ExercisesScreenGetExerciseControllerRef,
            id,
          ),
          from: exercisesScreenGetExerciseControllerProvider,
          name: r'exercisesScreenGetExerciseControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$exercisesScreenGetExerciseControllerHash,
          dependencies:
              ExercisesScreenGetExerciseControllerFamily._dependencies,
          allTransitiveDependencies: ExercisesScreenGetExerciseControllerFamily
              ._allTransitiveDependencies,
          id: id,
        );

  ExercisesScreenGetExerciseControllerProvider._internal(
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
    Future<ExerciseModel?> Function()? Function(
            ExercisesScreenGetExerciseControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ExercisesScreenGetExerciseControllerProvider._internal(
        (ref) => create(ref as ExercisesScreenGetExerciseControllerRef),
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
  AutoDisposeProviderElement<Future<ExerciseModel?> Function()?>
      createElement() {
    return _ExercisesScreenGetExerciseControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExercisesScreenGetExerciseControllerProvider &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ExercisesScreenGetExerciseControllerRef
    on AutoDisposeProviderRef<Future<ExerciseModel?> Function()?> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _ExercisesScreenGetExerciseControllerProviderElement
    extends AutoDisposeProviderElement<Future<ExerciseModel?> Function()?>
    with ExercisesScreenGetExerciseControllerRef {
  _ExercisesScreenGetExerciseControllerProviderElement(super.provider);

  @override
  String? get id => (origin as ExercisesScreenGetExerciseControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
