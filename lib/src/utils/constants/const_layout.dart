import 'package:flutter/material.dart';
import 'package:impostor/src/utils/constants/const_value.dart';

/// All the layout constants are defined here.
class ConstLayout {
  ConstLayout._();

  /// Extra small Spacer.
  static const double spacerExtraSmall = ConstValue.dp4;

  /// Small Spacer.
  static const double spacerSmall = ConstValue.dp8;

  /// Default Spacer.
  static const double spacer = ConstValue.dp16;

  /// Medium Spacer.
  static const double spacerMedium = ConstValue.dp24;

  /// Border size.
  static const double borderSize = ConstValue.dp1;

  /// Corner radius.
  static const double borderRadiusSmall = ConstValue.dp8;

  /// Border radius.
  static const double borderRadius = ConstValue.dp16;

  /// Button height.
  static const double buttonHeight = ConstValue.dp48;

  /// Small icon size.
  static const double iconSmallSize = ConstValue.dp16;

  /// Medium icon size.
  static const double iconMediumSize = ConstValue.dp24;

  /// Max game cars width size.
  static const double maxGameWidthSize = ConstValue.dp840;

  /// Max compact screen width.
  static const double maxWidthCompact = ConstValue.dp600;

  /// Max medium screen width.
  static const double maxWidthMedium = ConstValue.dp840;

  /// Avatar image medium size.
  static const double avatarMediumSize = ConstValue.dp64;

  /// Avatar image large size.
  static const double avatarLargeSize = ConstValue.dp128;

  /// Avatar image small size.
  static const double avatarSmallSize = ConstValue.dp32;

  /// Avatar width size.
  static const double avatarWidthSize = ConstValue.dp192;

  /// Avatar image extra small size.
  static const double avatarExtraSmallSize = ConstValue.dp48;

  /// Max player card width size.
  static const double maxPlayerCardWidthSize = avatarMediumSize * 3;

  /// Medal size.
  static const double medalSize = ConstValue.dp48;

  /*
   *  Get Colors
   */

  /// Get main background color.
  static Color getBackgroundColor(ColorScheme colorScheme) {
    return colorScheme.brightness == Brightness.dark
        ? colorScheme.surfaceContainerHigh
        : colorScheme.surface;
  }

  /// Get main border color.
  static Color getMainBorderColor(ColorScheme colorScheme) {
    return colorScheme.brightness == Brightness.dark
        ? colorScheme.surfaceContainer
        : colorScheme.surfaceContainerHighest;
  }

  /// Get secondary background color.
  static Color getSecondaryBackgroundColor(ColorScheme colorScheme) {
    return colorScheme.brightness == Brightness.dark
        ? colorScheme.surface
        : colorScheme.surfaceContainer;
  }
}
