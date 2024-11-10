// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loadingControllerHash() => r'100f17836e97a4736de20a717626826112e0e386';

/// General loading controller to use in other controllers.
///
/// final isGeneralLoading = ref.watch(loadingControllerProvider);
/// To start:
/// ref.read(loadingControllerProvider.notifier).startLoading();
/// To end:
/// ref.read(loadingControllerProvider.notifier).stopLoading();
///
/// Copied from [LoadingController].
@ProviderFor(LoadingController)
final loadingControllerProvider =
    NotifierProvider<LoadingController, bool>.internal(
  LoadingController.new,
  name: r'loadingControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loadingControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoadingController = Notifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
