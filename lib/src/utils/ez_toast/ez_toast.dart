import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

/// Custom enums to define the type and style of the toastification
enum EzToastType {
  info,
  warning,
  error,
  success,
}

class EzToast {
  static void show({
    required BuildContext context,
    String? title,
    required String description,
    EzToastType type = EzToastType.info,
    Widget? icon,
    bool dragToClose = true,
  }) {
    toastification.show(
      context: context,
      type: _mapEzToastType(type),
      icon: icon,
      style: ToastificationStyle.flat,
      title: Text(
        title ?? _mapEzToastType(type).name.toCapitalized(),
      ),
      description: Text(description),
      alignment: Alignment.bottomRight,
      autoCloseDuration: const Duration(seconds: 4),
      applyBlurEffect: false,
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      borderRadius: EzConstLayout.getBorderRadius(),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.onSurface.withAlpha(80),
      ),
    );
  }

  /// Helper method to map EzToastType to ToastificationType
  static ToastificationType _mapEzToastType(EzToastType type) {
    switch (type) {
      case EzToastType.info:
        return ToastificationType.info;
      case EzToastType.warning:
        return ToastificationType.warning;
      case EzToastType.error:
        return ToastificationType.error;
      case EzToastType.success:
        return ToastificationType.success;
    }
  }
}
