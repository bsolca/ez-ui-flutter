// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_name_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localNameControllerHash() =>
    r'c88efb802656b2690c1565c1b5f70db3c0a6080e';

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

/// Returns the language name for the given language code.
///
/// Copied from [localNameController].
@ProviderFor(localNameController)
const localNameControllerProvider = LocalNameControllerFamily();

/// Returns the language name for the given language code.
///
/// Copied from [localNameController].
class LocalNameControllerFamily extends Family<String> {
  /// Returns the language name for the given language code.
  ///
  /// Copied from [localNameController].
  const LocalNameControllerFamily();

  /// Returns the language name for the given language code.
  ///
  /// Copied from [localNameController].
  LocalNameControllerProvider call(
    String tag,
  ) {
    return LocalNameControllerProvider(
      tag,
    );
  }

  @override
  LocalNameControllerProvider getProviderOverride(
    covariant LocalNameControllerProvider provider,
  ) {
    return call(
      provider.tag,
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
  String? get name => r'localNameControllerProvider';
}

/// Returns the language name for the given language code.
///
/// Copied from [localNameController].
class LocalNameControllerProvider extends AutoDisposeProvider<String> {
  /// Returns the language name for the given language code.
  ///
  /// Copied from [localNameController].
  LocalNameControllerProvider(
    String tag,
  ) : this._internal(
          (ref) => localNameController(
            ref as LocalNameControllerRef,
            tag,
          ),
          from: localNameControllerProvider,
          name: r'localNameControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localNameControllerHash,
          dependencies: LocalNameControllerFamily._dependencies,
          allTransitiveDependencies:
              LocalNameControllerFamily._allTransitiveDependencies,
          tag: tag,
        );

  LocalNameControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tag,
  }) : super.internal();

  final String tag;

  @override
  Override overrideWith(
    String Function(LocalNameControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocalNameControllerProvider._internal(
        (ref) => create(ref as LocalNameControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tag: tag,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _LocalNameControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalNameControllerProvider && other.tag == tag;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tag.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocalNameControllerRef on AutoDisposeProviderRef<String> {
  /// The parameter `tag` of this provider.
  String get tag;
}

class _LocalNameControllerProviderElement
    extends AutoDisposeProviderElement<String> with LocalNameControllerRef {
  _LocalNameControllerProviderElement(super.provider);

  @override
  String get tag => (origin as LocalNameControllerProvider).tag;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
