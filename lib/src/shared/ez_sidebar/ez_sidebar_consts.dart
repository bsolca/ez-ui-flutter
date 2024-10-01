// ez_sidebar_consts.dart
import 'package:flutter/material.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// Constants and utility methods used in the Sidebar widget.
class EzSidebarConsts {
  EzSidebarConsts._();

  // ***************
  // Global Sidebar Constants
  // ***************

  /// Sidebar width
  static const double sidebarWidth = 260;

  // ************
  // Divider
  // ************

  /// Divider padding
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: 8,
  );

  /// Divider thickness
  static const double dividerThickness = 1;

  /// Default divider color opacity
  static const int dividerColorOpacity = 20;

  /// Returns the divider color based on the color scheme.
  static Color getDividerColor(ColorScheme colorScheme) {
    return colorScheme.inverseSurface.withAlpha(dividerColorOpacity);
  }

  // ***************
  // Sidebar Background
  // ***************

  /// Returns the sidebar background color based on the color scheme.
  static Color getSidebarBackgroundColor(ColorScheme colorScheme) {
    return colorScheme.brightness == Brightness.dark
        ? colorScheme.surface
        : colorScheme.surfaceContainer;
  }

  // ************
  // Indicator
  // ************

  /// Padding for sidebar indicator
  static const EdgeInsets indicatorPadding = EdgeInsets.symmetric(vertical: 8);

  /// Default indicator vertical padding
  static const double indicatorVerticalPadding = 8;

  /// Returns the indicator color based on the color scheme.
  static Color getIndicatorColor(ColorScheme colorScheme) {
    return colorScheme.onSurface;
  }

  // *****************
  // Sidebar Header
  // *****************

  /// Padding for sidebar header
  static const EdgeInsets headerPadding = EdgeInsets.all(16);

  // *****************
  // Sidebar Footer
  // *****************

  /// Padding for sidebar footer
  static const EdgeInsets footerPadding = EdgeInsets.all(8);

  // ***********
  // Sidebar Item
  // ***********

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

  /// Padding to the right of the icon in SidebarItem
  static const EdgeInsets sidebarItemIconPadding = EdgeInsets.only(right: 16);

  /// Text style for SidebarItem
  static const TextStyle sidebarItemTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
  );

  /// Size of the SVG icon in SidebarItem
  static const double sidebarItemIconSize = 24;

  /// Border radius for InkWell in SidebarItem
  static const double sidebarItemInkWellBorderRadius = 8;

  /// Returns the overlay color for SidebarItem based on the color scheme.
  static Color getSidebarItemOverlayColor(ColorScheme colorScheme) {
    return colorScheme.inverseSurface.withAlpha(itemOverlayOpacity);
  }

  /// Returns the shape border for SidebarItem using SmoothRectangleBorder.
  static ShapeBorder getSidebarItemShapeBorder() {
    return SmoothRectangleBorder(
      borderRadius: SmoothBorderRadius(
        cornerRadius: itemBorderRadius,
        cornerSmoothing: itemBorderSmoothing,
      ),
    );
  }

  /// Returns the icon color when hovered.
  static Color getSidebarItemIconHoverColor(ColorScheme colorScheme) {
    return colorScheme.onSurface;
  }

  /// Returns the default icon color (when not hovered and not selected).
  static Color getSidebarItemIconDefaultColor(ColorScheme colorScheme) {
    return colorScheme.onSurface.withOpacity(0.6);
  }

  /// Returns the icon color when selected and not hovered.
  static Color getSidebarItemIconSelectedColor(ColorScheme colorScheme) {
    return colorScheme.onSurface;
  }

  // ***************
  // Avatar
  // ***************

  /// Avatar size
  static const double avatarSize = 36;

  // ***************
  // Icon
  // ***************

  /// Blend mode for the SVG icon color filter
  static const BlendMode sidebarItemIconBlendMode = BlendMode.srcIn;
}
