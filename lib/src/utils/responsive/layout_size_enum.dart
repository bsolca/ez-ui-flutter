/// LayoutSize is an enum that represents the layout size.
///
/// Read more:
/// https://m3.material.io/foundations/layout/understanding-layout/overview.
enum LayoutSize {
  /// Size commonly used for Phone in portrait.
  ///
  /// Breakpoint: Width < 600.
  compact,

  /// Size commonly used for Tablet in portrait,Foldable in portrait (unfolded).
  ///
  /// Breakpoint: 600 < width < 840.
  medium,

  /// Size commonly used for phone and tablet landscape, Desktop.
  ///
  /// Breakpoint: Width > 840
  expanded,
}
