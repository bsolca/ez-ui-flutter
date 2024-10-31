// ignore_for_file: public_member_api_docs

import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/material.dart';

class EzConstLayout {
  EzConstLayout._();

  // Spacers
  static const double spacerExtraSmall = EzConstValue.dp4;
  static const double spacerSmall = EzConstValue.dp8;
  static const double spacer = EzConstValue.dp16;
  static const double spacerMedium = EzConstValue.dp24;

  // Borders and Corners
  static const double borderSize = EzConstValue.dp1;
  static const double borderRadiusSmall = EzConstValue.dp8;
  static const double borderRadius = EzConstValue.dp16;
  static const double cornerSmoothing = EzConstValue.dp05;

  // Button and Icon Sizes
  static const double buttonHeight = EzConstValue.dp48;
  static const double iconSmallSize = EzConstValue.dp16;
  static const double iconMediumSize = EzConstValue.dp24;

  // Layout Dimensions
  static const double minColumnWidth = EzConstValue.dp48;
  static const double maxWidthCompact = EzConstValue.dp1024;
  static const double maxWidthMedium = EzConstValue.dp2048;

  // Avatar Sizes
  static const double avatarMediumSize = EzConstValue.dp64;
  static const double avatarLargeSize = EzConstValue.dp128;
  static const double avatarSmallSize = EzConstValue.dp32;
  static const double avatarWidthSize = EzConstValue.dp192;
  static const double avatarExtraSmallSize = EzConstValue.dp48;
  static const double maxPlayerCardWidthSize = avatarMediumSize * 3;

  // Sizes
  static const double itemHeight = EzConstValue.dp40;
  static const double medalSize = EzConstValue.dp48;

  // Colors
  static Color getBackgroundColor(ColorScheme colorScheme) =>
      colorScheme.brightness == Brightness.dark
          ? colorScheme.surfaceContainerHigh
          : colorScheme.surface;

  static Color getMainBorderColor(ColorScheme colorScheme) =>
      colorScheme.brightness == Brightness.dark
          ? colorScheme.surfaceContainer
          : colorScheme.surfaceContainerHighest;

  static Color getSecondaryBackgroundColor(ColorScheme colorScheme) =>
      colorScheme.brightness == Brightness.dark
          ? colorScheme.surface
          : colorScheme.surfaceContainer;

  // Radius
  static const double itemBorderRadius = EzConstValue.dp8;
  static const double itemBorderSmoothing = 0.4;

  static ShapeBorder getShapeBorder() {
    return SmoothRectangleBorder(
      borderRadius: SmoothBorderRadius(
        cornerRadius: itemBorderRadius,
        cornerSmoothing: itemBorderSmoothing,
      ),
    );
  }
}