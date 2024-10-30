// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_config.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$envConfigHash() => r'1e7514d3b6d853135666d7b7be1663951110e906';

/// The provider that provides the environment variables.
///
/// Copied from [EnvConfig].
@ProviderFor(EnvConfig)
final envConfigProvider =
    NotifierProvider<EnvConfig, Map<String, String>>.internal(
  EnvConfig.new,
  name: r'envConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$envConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EnvConfig = Notifier<Map<String, String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
