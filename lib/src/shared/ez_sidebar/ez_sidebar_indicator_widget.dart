import 'package:flutter/material.dart';

/// A widget that shows a scrollable indicator synced with a scrollable list.
class EzSidebarIndicatorWidget extends StatefulWidget {
  /// A widget that shows a scrollable indicator synced with a scrollable list.
  const EzSidebarIndicatorWidget({
    super.key,
    required this.scrollController,
    required this.itemHeights,
    required this.selectedIndex,
    this.indicatorColor = Colors.blue,
    this.indicatorWidth = 4,
    this.indicatorBorderRadius = 2,
    this.indicatorPadding = EdgeInsets.zero,
  });

  /// The scroll controller of the list.
  final ScrollController scrollController;

  /// The heights of the items in the list.
  final List<double> itemHeights;

  /// The index of the selected item.
  final int selectedIndex;

  /// The color of the indicator.
  final Color indicatorColor;

  /// The width of the indicator.
  final double indicatorWidth;

  /// The border radius of the indicator.
  final double indicatorBorderRadius;

  /// The padding of the indicator.
  final EdgeInsets indicatorPadding;

  @override
  State<EzSidebarIndicatorWidget> createState() =>
      _EzSidebarIndicatorWidgetState();
}

class _EzSidebarIndicatorWidgetState extends State<EzSidebarIndicatorWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _indicatorPosition = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _indicatorPosition = _calculateIndicatorPosition();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant EzSidebarIndicatorWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _animateIndicator();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    final newPosition = _calculateIndicatorPosition();
    if (newPosition != _indicatorPosition) {
      setState(() {
        _indicatorPosition = newPosition;
      });
    }
  }

  void _animateIndicator() {
    final start = _indicatorPosition;
    final end = _calculateIndicatorPosition();

    _animation = Tween<double>(begin: start, end: end).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {
          _indicatorPosition = _animation.value;
        });
      });
    _animationController.forward(from: 0);
  }

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
            indicatorWidth: widget.indicatorWidth,
            indicatorBorderRadius: widget.indicatorBorderRadius,
            indicatorPadding: widget.indicatorPadding,
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
    required this.indicatorWidth,
    required this.indicatorBorderRadius,
    required this.indicatorPadding,
  });

  final double indicatorPosition;
  final double indicatorHeight;
  final Color indicatorColor;
  final double indicatorWidth;
  final double indicatorBorderRadius;
  final EdgeInsets indicatorPadding;

  @override
  void paint(Canvas canvas, Size size) {
    final indicatorRRect = RRect.fromLTRBR(
      0,
      indicatorPosition + indicatorPadding.top,
      indicatorWidth,
      indicatorPosition + indicatorHeight - indicatorPadding.bottom,
      Radius.circular(indicatorBorderRadius),
    );

    final visibleRect = Offset.zero & size;

    if (!indicatorRRect.outerRect.overlaps(visibleRect)) return;

    final paint = Paint()..color = indicatorColor;
    canvas.drawRRect(indicatorRRect, paint);
  }

  @override
  bool shouldRepaint(covariant _IndicatorPainter oldDelegate) {
    return indicatorPosition != oldDelegate.indicatorPosition ||
        indicatorHeight != oldDelegate.indicatorHeight ||
        indicatorColor != oldDelegate.indicatorColor ||
        indicatorWidth != oldDelegate.indicatorWidth ||
        indicatorBorderRadius != oldDelegate.indicatorBorderRadius ||
        indicatorPadding != oldDelegate.indicatorPadding;
  }
}
