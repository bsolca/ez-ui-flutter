import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class EzDialog {
  static void show<T>({
    required WidgetBuilder builder,
  }) {
    SmartDialog.show<T>(
      animationType: SmartAnimationType.fade,
      animationTime: EzConstValue.animationDuration,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.all(50),
          constraints: const BoxConstraints(
            maxWidth: EzConstLayout.maxWidthCompact,
          ),
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer,
            shape: EzConstLayout.getShapeBorder(),
          ),
          alignment: Alignment.center,
          child: builder(context),
        );
      },
    );
  }

  static void dismiss<T>() {
    SmartDialog.dismiss<T>();
  }
}
