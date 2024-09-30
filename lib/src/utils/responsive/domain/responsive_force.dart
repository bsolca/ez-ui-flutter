import 'package:impostor/src/utils/responsive/layout_size_enum.dart';

/// Force a layout size.
abstract interface class ResponsiveForce {
  /// Force a layout size.
  const ResponsiveForce({
    this.forceLayoutSize,
  });

  /// Force a layout size.
  final LayoutSize? forceLayoutSize;
}
