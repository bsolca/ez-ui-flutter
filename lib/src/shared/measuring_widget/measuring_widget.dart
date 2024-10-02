import 'package:flutter/material.dart';

/// A [MeasuringWidget] that measures the size of its child widget.
/// This widget notifies when the size of the [child] changes.
class MeasuringWidget extends StatefulWidget {
  /// Creates a [MeasuringWidget].
  const MeasuringWidget({
    super.key,
    required this.child,
    required this.onSize,
  });

  /// The child widget to be measured.
  final Widget child;

  /// Callback invoked when the size of the [child] changes.
  final ValueChanged<Size> onSize;

  @override
  State<MeasuringWidget> createState() => _MeasuringWidgetState();
}

class _MeasuringWidgetState extends State<MeasuringWidget> {
  final GlobalKey _key = GlobalKey();
  Size? _oldSize;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  void didUpdateWidget(covariant MeasuringWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  void _afterLayout(Duration timeStamp) {
    if (!mounted) return;

    final context = _key.currentContext;
    if (context == null) return;

    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null || !renderBox.hasSize) return;

    final newSize = renderBox.size;
    if (_oldSize != newSize) {
      _oldSize = newSize;
      widget.onSize(newSize);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: widget.child,
    );
  }
}
