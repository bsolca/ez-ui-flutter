import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// To be used in the router pages as a starter for a new screen.
class EzScaffoldBody extends ConsumerWidget {
  /// To be used in the router pages as a starter for a new screen.
  const EzScaffoldBody({
    super.key,
    required this.child,
  });

  /// The child widget to be displayed in the scaffold body.
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCompact = ref.isCompactScreen;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: EzConstValue.dp1024,
          ),
          padding: EdgeInsets.symmetric(
            vertical: EzConstLayout.spacerSmall,
            horizontal: isCompact ? EzConstLayout.spacer : EzConstValue.dp64,
          ),
          child: child,
        ),
      ),
    );
  }
}
