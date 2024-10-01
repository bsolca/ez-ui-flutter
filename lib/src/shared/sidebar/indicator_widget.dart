// indicator_widget.dart
import 'package:flutter/material.dart';

/// A widget that shows a scrollable indicator synced with a scrollable list.
///
/// The [IndicatorWidget] displays an indicator that moves along with the
/// items in a scrollable list and highlights the currently selected item
/// based on the scroll position. The indicator size adjusts according to
/// the height of the selected item.
///
/// This widget works with a [ScrollController] to update the indicator's
/// position and size based on the current scroll offset and selected index.
class IndicatorWidget extends StatefulWidget {
  /// Creates an [IndicatorWidget] with the given [scrollController],
  const IndicatorWidget({
    super.key,
    required this.scrollController,
    required this.itemHeights,
    required this.selectedIndex,
    this.indicatorColor = Colors.blue,
  });

  /// The controller to monitor and control the scroll position of the list.
  final ScrollController scrollController;

  /// A list of item heights for the scrollable list.
  ///
  /// The length of this list should correspond to the number of items
  /// in the scrollable list, and each value represents the height of the
  /// respective item.
  final List<double> itemHeights;

  /// The index of the currently selected item in the scrollable list.
  final int selectedIndex;

  /// The color of the scroll indicator.
  final Color indicatorColor;

  @override
  State<IndicatorWidget> createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _indicatorPosition = 0;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController for smooth transitions
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    // Calculate the initial position of the indicator
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _indicatorPosition = _calculateIndicatorPosition();
      });
    });

    // Listen to scroll changes to update the indicator's position
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant IndicatorWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Animate the indicator when the selected index changes
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _animateIndicator();
    }

    // Recalculate the indicator position when item heights change
    if (oldWidget.itemHeights != widget.itemHeights) {
      setState(() {
        _indicatorPosition = _calculateIndicatorPosition();
      });
    }
  }

  @override
  void dispose() {
    // Clean up the animation controller and scroll listener
    _animationController.dispose();
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  /// Handles scroll events and updates the indicator position accordingly.
  void _onScroll() {
    setState(() {
      _indicatorPosition = _calculateIndicatorPosition();
    });
  }

  /// Animates the indicator position when the selected index changes.
  void _animateIndicator() {
    final start = _indicatorPosition;
    final end = _calculateIndicatorPosition();

    _animationController.reset();

    _animation = Tween<double>(begin: start, end: end).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    )..addListener(() {
      setState(() {
        _indicatorPosition = _animation.value;
      });
    });

    _animationController.forward();
  }

  /// Calculates indicator position from scroll offset and selected index.
  double _calculateIndicatorPosition() {
    var position = -widget.scrollController.offset;
    for (var i = 0; i < widget.selectedIndex; i++) {
      position += widget.itemHeights[i];
    }
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: IgnorePointer(
        child: CustomPaint(
          painter: _IndicatorPainter(
            indicatorPosition: _indicatorPosition,
            indicatorHeight: widget.itemHeights.isNotEmpty &&
                widget.selectedIndex < widget.itemHeights.length
                ? widget.itemHeights[widget.selectedIndex]
                : 0.0,
            indicatorColor: widget.indicatorColor,
          ),
        ),
      ),
    );
  }
}

/// A custom painter that draws the indicator on the canvas.
class _IndicatorPainter extends CustomPainter {
  _IndicatorPainter({
    required this.indicatorPosition,
    required this.indicatorHeight,
    required this.indicatorColor,
  });

  /// The vertical position of the indicator.
  final double indicatorPosition;

  /// The height of the indicator, which matches the selected item height.
  final double indicatorHeight;

  /// The color of the indicator.
  final Color indicatorColor;

  @override
  void paint(Canvas canvas, Size size) {
    // Define the rectangle for the indicator
    final indicatorRect = Rect.fromLTWH(
      0,
      indicatorPosition,
      4, // Indicator width
      indicatorHeight,
    );

    // Define the visible area of the canvas
    final visibleRect = Offset.zero & size;

    // Only paint if the indicator is within the visible area
    if (!indicatorRect.overlaps(visibleRect)) {
      return;
    }

    // Calculate the portion of the indicator that overlaps.
    final clippedRect = indicatorRect.intersect(visibleRect);

    // Paint the indicator
    final paint = Paint()..color = indicatorColor;
    canvas.drawRect(clippedRect, paint);
  }

  @override
  bool shouldRepaint(covariant _IndicatorPainter oldDelegate) {
    // Repaint when the position, height, or color of the indicator changes
    return indicatorPosition != oldDelegate.indicatorPosition ||
        indicatorHeight != oldDelegate.indicatorHeight ||
        indicatorColor != oldDelegate.indicatorColor;
  }
}
