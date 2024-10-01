import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Scrollable indicator synced with a scrollable list.
///
/// The [SidebarIndicatorRenderBox] calculates and paints the position and size
/// of the indicator based on the scroll position of the list and the
/// currently selected index. The indicator height is determined by the
/// height of the selected item.
class SidebarIndicatorRenderBox extends RenderBox {
  /// Creates an [SidebarIndicatorRenderBox] with the given parameters.
  SidebarIndicatorRenderBox({
    required this.scrollController,
    required this.itemHeights,
    required this.selectedIndex,
    required this.indicatorColor,
  });

  /// The controller to track and control the scrollable list's position.
  final ScrollController scrollController;

  /// A list of item heights corresponding to the items in the scrollable list.
  final List<double> itemHeights;

  /// The index of the currently selected item in the scrollable list.
  int selectedIndex;

  /// The color of the scroll indicator.
  Color indicatorColor;

  @override
  bool get sizedByParent => true;

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    // Attach a listener to the scroll controller to repaint when scrolling.
    scrollController.addListener(markNeedsPaint);
  }

  @override
  void detach() {
    // Remove the listener from the scroll controller when detaching.
    scrollController.removeListener(markNeedsPaint);
    super.detach();
  }

  @override
  void performResize() {
    // Set the size to be constrained by the parent.
    size = constraints.biggest;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;

    // Calculate the top position of the indicator based on the scroll offset
    var topPosition = -scrollController.offset;
    for (var i = 0; i < selectedIndex; i++) {
      topPosition += itemHeights[i];
    }

    // Guard against invalid index or missing item heights
    if (selectedIndex < 0 ||
        selectedIndex >= itemHeights.length ||
        itemHeights[selectedIndex] == 0.0) {
      return;
    }

    // Get the height of the selected item
    final indicatorHeight = itemHeights[selectedIndex];

    // Draw the indicator rectangle on the canvas
    final paint = Paint()..color = indicatorColor;
    final rect = Rect.fromLTWH(
      offset.dx,
      offset.dy + topPosition,
      4, // Indicator width
      indicatorHeight,
    );

    // Paint the rectangle representing the indicator
    canvas.drawRect(rect, paint);
  }
}
