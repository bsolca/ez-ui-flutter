import 'dart:async';

import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_event_handler/ez_event_controller.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EzAsyncValue {
  const EzAsyncValue._();

  /// A utility method that wraps asynchronous operations,
  /// manages loading state, handles success and error toasts,
  /// and allows the caller to handle state updates via callbacks.
  static Future<AsyncValue<T>> guard<T>({
    required Ref ref,
    required Future<T> Function() operation,
    FutureOr<T> Function()? onSuccess,
    FutureOr<T> Function(Object error, StackTrace stack)? onError,
    String? successToastMessage,
    String Function(Object error)? errorToastMessage,
  }) async {
    // Start the loading state
    ref.read(loadingControllerProvider.notifier).startLoading();

    try {
      final res = await operation();

      // Show success toast if provided
      if (successToastMessage != null) {
        await ref
            .read(ezEventControllerProvider.notifier)
            .sendSuccessToast(successToastMessage);
      }

      // Invoke the onSuccess callback if provided
      if (onSuccess != null) {
        await onSuccess();
      }

      return AsyncValue.data(res);
    } catch (err, stack) {
      // Show error toast if provided
      if (errorToastMessage != null) {
        final message = errorToastMessage(err);
        await ref
            .read(ezEventControllerProvider.notifier)
            .sendErrorToast(message);
      }

      // Invoke the onError callback if provided
      if (onError != null) {
        final res = await onError(err, stack);
        return AsyncValue.data(res);
      }

      return AsyncValue.error(err, stack);
    } finally {
      // Stop the loading state
      ref.read(loadingControllerProvider.notifier).stopLoading();
    }
  }
}
