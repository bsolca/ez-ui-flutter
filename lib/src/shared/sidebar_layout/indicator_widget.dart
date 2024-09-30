// indicator_widget.dart
import 'package:flutter/material.dart';

class IndicatorWidget extends StatefulWidget {
  const IndicatorWidget({
    Key? key,
    required this.scrollController,
    required this.itemHeights,
    required this.selectedIndex,
    this.indicatorColor = Colors.blue,
  }) : super(key: key);

  final ScrollController scrollController;
  final List<double> itemHeights;
  final int selectedIndex;
  final Color indicatorColor;

  @override
  _IndicatorWidgetState createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _indicatorPosition = 0.0;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    // Calculate initial indicator position after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _indicatorPosition = _calculateIndicatorPosition();
      });
    });

    // Add scroll listener to update indicator position instantly during scroll
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant IndicatorWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.selectedIndex != widget.selectedIndex) {
      // Selected index has changed, animate the indicator
      _animateIndicator();
    }

    // If item heights change, recalculate position
    if (oldWidget.itemHeights != widget.itemHeights) {
      setState(() {
        _indicatorPosition = _calculateIndicatorPosition();
      });
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    // Update indicator position instantly during scroll
    setState(() {
      _indicatorPosition = _calculateIndicatorPosition();
    });
  }

  void _animateIndicator() {
    final double start = _indicatorPosition;
    final double end = _calculateIndicatorPosition();

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

  double _calculateIndicatorPosition() {
    double position = -widget.scrollController.offset;
    for (int i = 0; i < widget.selectedIndex; i++) {
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

class _IndicatorPainter extends CustomPainter {
  _IndicatorPainter({
    required this.indicatorPosition,
    required this.indicatorHeight,
    required this.indicatorColor,
  });

  final double indicatorPosition;
  final double indicatorHeight;
  final Color indicatorColor;

  @override
  void paint(Canvas canvas, Size size) {
    // Define the indicator rectangle
    final Rect indicatorRect = Rect.fromLTWH(
      0.0,
      indicatorPosition,
      4.0, // Indicator width
      indicatorHeight,
    );

    // Define the visible area
    final Rect visibleRect = Offset.zero & size;

    // Check if the indicator is within the visible area
    if (!indicatorRect.overlaps(visibleRect)) {
      return; // Don't paint if not visible
    }

    // Calculate the overlapping portion
    final Rect clippedRect = indicatorRect.intersect(visibleRect);

    // Draw the indicator
    final Paint paint = Paint()..color = indicatorColor;
    canvas.drawRect(clippedRect, paint);
  }

  @override
  bool shouldRepaint(covariant _IndicatorPainter oldDelegate) {
    return indicatorPosition != oldDelegate.indicatorPosition ||
        indicatorHeight != oldDelegate.indicatorHeight ||
        indicatorColor != oldDelegate.indicatorColor;
  }
}
