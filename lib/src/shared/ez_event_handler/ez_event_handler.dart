import 'package:ez_fit_app/src/shared/ez_event_handler/ez_event_controller.codegen.dart';
import 'package:ez_fit_app/src/utils/ez_toast/ez_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:toastification/toastification.dart';

class EzEventHandler extends ConsumerWidget {
  const EzEventHandler({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(ezEventControllerProvider, (previous, next) {
      if (next.isLoading || next.isRefreshing) return;

      final type = next.value?.type;
      final description = next.value?.description;

      if (type != null && description != null) {
        EzToast.show(
          context: context,
          type: type,
          description: description,
        );
        ref.read(ezEventControllerProvider.notifier).reset();
      }
    });
    return FlutterSmartDialog(
      child: ToastificationWrapper(
        child: child,
      ),
    );
  }
}
