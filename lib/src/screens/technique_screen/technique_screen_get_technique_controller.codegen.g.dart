// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technique_screen_get_technique_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$techniquesScreenGetTechniqueControllerHash() =>
    r'6e16cc13a5adbd20291670bf923b602c90e5c4d1';

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

/// See also [techniquesScreenGetTechniqueController].
@ProviderFor(techniquesScreenGetTechniqueController)
const techniquesScreenGetTechniqueControllerProvider =
    TechniquesScreenGetTechniqueControllerFamily();

/// See also [techniquesScreenGetTechniqueController].
class TechniquesScreenGetTechniqueControllerFamily
    extends Family<Future<TechniqueModel?> Function()?> {
  /// See also [techniquesScreenGetTechniqueController].
  const TechniquesScreenGetTechniqueControllerFamily();

  /// See also [techniquesScreenGetTechniqueController].
  TechniquesScreenGetTechniqueControllerProvider call(
    String? id,
  ) {
    return TechniquesScreenGetTechniqueControllerProvider(
      id,
    );
  }

  @override
  TechniquesScreenGetTechniqueControllerProvider getProviderOverride(
    covariant TechniquesScreenGetTechniqueControllerProvider provider,
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
  String? get name => r'techniquesScreenGetTechniqueControllerProvider';
}

/// See also [techniquesScreenGetTechniqueController].
class TechniquesScreenGetTechniqueControllerProvider
    extends AutoDisposeProvider<Future<TechniqueModel?> Function()?> {
  /// See also [techniquesScreenGetTechniqueController].
  TechniquesScreenGetTechniqueControllerProvider(
    String? id,
  ) : this._internal(
          (ref) => techniquesScreenGetTechniqueController(
            ref as TechniquesScreenGetTechniqueControllerRef,
            id,
          ),
          from: techniquesScreenGetTechniqueControllerProvider,
          name: r'techniquesScreenGetTechniqueControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$techniquesScreenGetTechniqueControllerHash,
          dependencies:
              TechniquesScreenGetTechniqueControllerFamily._dependencies,
          allTransitiveDependencies:
              TechniquesScreenGetTechniqueControllerFamily
                  ._allTransitiveDependencies,
          id: id,
        );

  TechniquesScreenGetTechniqueControllerProvider._internal(
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
    Future<TechniqueModel?> Function()? Function(
            TechniquesScreenGetTechniqueControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TechniquesScreenGetTechniqueControllerProvider._internal(
        (ref) => create(ref as TechniquesScreenGetTechniqueControllerRef),
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
  AutoDisposeProviderElement<Future<TechniqueModel?> Function()?>
      createElement() {
    return _TechniquesScreenGetTechniqueControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TechniquesScreenGetTechniqueControllerProvider &&
        other.id == id;
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
mixin TechniquesScreenGetTechniqueControllerRef
    on AutoDisposeProviderRef<Future<TechniqueModel?> Function()?> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _TechniquesScreenGetTechniqueControllerProviderElement
    extends AutoDisposeProviderElement<Future<TechniqueModel?> Function()?>
    with TechniquesScreenGetTechniqueControllerRef {
  _TechniquesScreenGetTechniqueControllerProviderElement(super.provider);

  @override
  String? get id =>
      (origin as TechniquesScreenGetTechniqueControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
