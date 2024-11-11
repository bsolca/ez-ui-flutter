import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_event_handler/ez_event_controller.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EzAsyncValue {
  const EzAsyncValue._();

  static Future<AsyncValue<T>> guard<T>({
    required Ref ref,
    required Future<T> Function() future,
    required String? successToastMessage,
    required String Function (String?)? errorToastMessage,
    bool Function(Object)? test,
  }) async {
    final ezEventPod = ref.read(ezEventControllerProvider.notifier);
    final loadingPod = ref.read(loadingControllerProvider.notifier)
      ..startLoading();

    try {
      final res = AsyncValue.data(await future());
      if (successToastMessage != null) {
        await ezEventPod.sendErrorToast(successToastMessage);
      }
      return res;
    } catch (err, stack) {
      if (errorToastMessage != null) {
        await ezEventPod.sendErrorToast(errorToastMessage(err.toString()));
      }
      if (test == null) {
        return AsyncValue.error(err, stack);
      }
      if (test(err)) {
        return AsyncValue.error(err, stack);
      }

      Error.throwWithStackTrace(err, stack);
    } finally {
      loadingPod.stopLoading();
    }
  }
}
