import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IndicatorRenderBox extends RenderBox {
  IndicatorRenderBox({
    required this.scrollController,
    required this.itemHeights,
    required this.selectedIndex,
    required this.indicatorColor,
  });

  final ScrollController scrollController;
  final List<double> itemHeights;
  int selectedIndex;
  Color indicatorColor;

  @override
  bool get sizedByParent => true;

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    scrollController.addListener(markNeedsPaint);
  }

  @override
  void detach() {
    scrollController.removeListener(markNeedsPaint);
    super.detach();
  }

  @override
  void performResize() {
    size = constraints.biggest;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final Canvas canvas = context.canvas;

    // Calculate the top position of the indicator
    double topPosition = -scrollController.offset;
    for (int i = 0; i < selectedIndex; i++) {
      topPosition += itemHeights[i];
    }

    // Guard against invalid index or missing item heights
    if (selectedIndex < 0 ||
        selectedIndex >= itemHeights.length ||
        itemHeights[selectedIndex] == 0.0) {
      return;
    }

    // Get the height of the selected item
    double indicatorHeight = itemHeights[selectedIndex];

    // Draw the indicator
    final Paint paint = Paint()..color = indicatorColor;
    final Rect rect = Rect.fromLTWH(
      offset.dx,
      offset.dy + topPosition,
      4.0, // Indicator width
      indicatorHeight,
    );

    canvas.drawRect(rect, paint);
  }
}
