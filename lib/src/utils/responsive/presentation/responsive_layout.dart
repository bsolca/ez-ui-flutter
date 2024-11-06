import 'package:ez_fit_app/src/utils/responsive/domain/responsive_force.dart';
import 'package:ez_fit_app/src/utils/responsive/layout_size_enum.dart';
import 'package:ez_fit_app/src/utils/responsive/screen_size_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that displays a different widget based on the current [LayoutSize].
class ResponsiveLayout extends ConsumerWidget implements ResponsiveForce {
  /// The medium view is required the other views are optional.
  const ResponsiveLayout({
    super.key,
    this.compact,
    required this.medium,
    this.expanded,
    this.child,
    this.children,
    this.forceLayoutSize,
  });

  /// Widget builder for the compact view.
  final Widget Function(Widget? child, List<Widget>? children)? compact;

  /// Widget builder for the medium view.
  final Widget Function(Widget? child, List<Widget>? children) medium;

  /// Widget builder for the expanded view.
  final Widget Function(Widget? child, List<Widget>? children)? expanded;

  /// The child widget that is passed to the builder.
  final Widget? child;

  /// The children widgets that are passed to the builder.
  final List<Widget>? children;

  @override
  final LayoutSize? forceLayoutSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: omit_local_variable_types
    final LayoutSize size = forceLayoutSize ?? ref.watch(screenSizePod);

    switch (size) {
      case LayoutSize.compact:
        return compact?.call(child, children) ?? medium(child, children);
      case LayoutSize.medium:
        return medium(child, children);
      case LayoutSize.expanded:
        return expanded?.call(child, children) ?? medium(child, children);
    }
  }
}
