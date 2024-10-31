import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/responsive/layout_size_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A [StateNotifier] that notifies its listeners when the screen size changes.
///
/// Read more:
/// https://m3.material.io/foundations/layout/applying-layout/window-size-classes
class ScreenSizeNotifier extends StateNotifier<LayoutSize> {
  /// Creates a [ScreenSizeNotifier].
  ScreenSizeNotifier() : super(LayoutSize.medium);

  /// Updates the [LayoutSize] based on the [newSize].
  void update(Size newSize) {
    const maxCompact = EzConstLayout.maxWidthCompact;
    const maxMedium = EzConstLayout.maxWidthMedium;

    if (newSize.width < maxCompact && state != LayoutSize.compact) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        state = LayoutSize.compact;
      });
    } else if (newSize.width >= maxCompact &&
        newSize.width < maxMedium &&
        state != LayoutSize.medium) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        state = LayoutSize.medium;
      });
    } else if (newSize.width >= maxMedium && state != LayoutSize.expanded) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        state = LayoutSize.expanded;
      });
    }
  }

  /// Returns the padding for the current [LayoutSize].
  double get padding {
    switch (state) {
      case LayoutSize.compact:
        return EzConstLayout.spacer;
      case LayoutSize.medium:
        return EzConstLayout.spacerMedium;
      case LayoutSize.expanded:
        return EzConstLayout.spacerMedium;
    }
  }
}

/// Provider that provides the current [LayoutSize].
final screenSizePod = StateNotifierProvider<ScreenSizeNotifier, LayoutSize>(
  (ref) => ScreenSizeNotifier(),
);
