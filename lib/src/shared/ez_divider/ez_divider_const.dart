// ignore_for_file: public_member_api_docs

import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
// ez_divider_consts.dart
import 'package:flutter/material.dart';

/// Constants and utility methods used in the EzDivider widget.
class EzDividerConsts {
  EzDividerConsts._();

  static const int _dividerColorOpacity = 20;

  // ************
  // Padding and Margins
  // ************

  static const EdgeInsets horizontalPadding = EdgeInsets.zero;

  static const double dividerThickness = EzConstValue.dp1;

  static Color getDividerColor(ColorScheme colorScheme) {
    return colorScheme.inverseSurface.withAlpha(_dividerColorOpacity);
  }
}
