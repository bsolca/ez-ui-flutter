import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EzDisable extends ConsumerWidget {
  const EzDisable({
    super.key,
    required this.child,
    required this.disabled,
  }) : _isMain = false;

  /// Use loadingControllerProvider main general provider.
  const EzDisable.main({
    super.key,
    required this.child,
    this.disabled = false,
  }) : _isMain = true;

  final Widget child;

  final bool disabled;

  final bool _isMain;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDisabled =
        _isMain ? ref.watch(loadingControllerProvider) || disabled : disabled;

    return MouseRegion(
      cursor: isDisabled ? SystemMouseCursors.forbidden : MouseCursor.defer,
      child: AbsorbPointer(
        absorbing: isDisabled,
        child: Opacity(
          opacity: isDisabled ? EzConstLayout.disabledOpacity : 1,
          child: child,
        ),
      ),
    );
  }
}
