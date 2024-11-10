import 'package:ez_fit_app/src/utils/log/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_controller.codegen.g.dart';

/// Main loading controller to use in other controllers.
///
/// final isGeneralLoading = ref.watch(loadingControllerProvider);
/// To start:
/// ref.read(loadingControllerProvider.notifier).startLoading();
/// To end:
/// ref.read(loadingControllerProvider.notifier).stopLoading();
@Riverpod(keepAlive: true)
class LoadingController extends _$LoadingController {
  @override
  bool build() => false;

  void startLoading() {
    logInfo('Main Loading Start');
    state = true;
  }
  void stopLoading() {
    logInfo('Main Loading STOP');
    state = false;
  }
}
