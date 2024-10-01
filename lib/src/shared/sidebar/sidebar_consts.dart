// sidebar_consts.dart
import 'package:flutter/material.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// Constants and utility methods used in the Sidebar widget.
class SidebarConsts {
  // ************
  // sidebar.dart
  // ************

  /// Divider padding
  static const EdgeInsets dividerPadding = EdgeInsets.symmetric(horizontal: 8);

  /// Divider thickness
  static const double dividerThickness = 1;

  /// Sidebar width
  static const double sidebarWidth = 200;

  /// Padding for sidebar items
  static const EdgeInsets itemPadding = EdgeInsets.symmetric(horizontal: 8);

  /// Padding for sidebar indicator
  static const EdgeInsets indicatorPadding = EdgeInsets.symmetric(vertical: 8);

  /// Default indicator color opacity for divider
  static const int dividerColorOpacity = 20;

  /// Default indicator vertical padding
  static const double indicatorVerticalPadding = 8;

  /// Returns the divider color.
  static Color getDividerColor(ColorScheme colorScheme) {
    return colorScheme.brightness == Brightness.dark
        ? colorScheme.inverseSurface.withAlpha(dividerColorOpacity)
        : colorScheme.surface.withAlpha(dividerColorOpacity);
  }

  /// Returns the indicator color.
  static Color getIndicatorColor(ColorScheme colorScheme) {
    return colorScheme.onSurface;
  }

  /// Returns the sidebar background color.
  static Color getSidebarBackgroundColor(ColorScheme colorScheme) {
    return colorScheme.brightness == Brightness.dark
        ? colorScheme.surface
        : colorScheme.surfaceContainer;
  }


  // *******************
  // sidebar_footer.dart
  // *******************

  /// Padding for sidebar footer
  static const EdgeInsets footerPadding = EdgeInsets.all(16);

  // *******************
  // sidebar_header.dart
  // *******************

  /// Padding for sidebar header
  static const EdgeInsets headerPadding = EdgeInsets.all(16);

  // *****************
  // sidebar_item.dart
  // *****************

  /// Animation duration for sidebar items
  static const Duration animationDuration = Duration(milliseconds: 200);

  /// Border radius for sidebar items
  static const double itemBorderRadius = 10;

  /// Border smoothing for sidebar items
  static const double itemBorderSmoothing = 0.5;

  /// Overlay color opacity for sidebar items
  static const int itemOverlayOpacity = 20;

  /// Padding for SidebarItem content
  static const EdgeInsets sidebarItemContentPadding =
  EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  /// Text style for SidebarItem
  static const TextStyle sidebarItemTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
  );

  /// Border radius for InkWell in SidebarItem
  static const double sidebarItemInkWellBorderRadius = 8;

  /// Overlay color for SidebarItem based on color scheme
  static Color getSidebarItemOverlayColor(ColorScheme colorScheme) {
    return colorScheme.inverseSurface.withAlpha(itemOverlayOpacity);
  }

  /// Shape border for SidebarItem using SmoothRectangleBorder
  static ShapeBorder getSidebarItemShapeBorder() {
    return SmoothRectangleBorder(
      borderRadius: SmoothBorderRadius(
        cornerRadius: itemBorderRadius,
        cornerSmoothing: itemBorderSmoothing,
      ),
    );
  }
}
