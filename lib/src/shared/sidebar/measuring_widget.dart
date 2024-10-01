import 'package:flutter/material.dart';

/// A [MeasuringWidget] that measures the size of its child widget.
///
/// This widget notifies when the size of the [child] changes.
class MeasuringWidget extends StatefulWidget {
  /// Creates a [MeasuringWidget].
  ///
  /// The [child] and [onSize] parameters are required.
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
  Size? oldSize;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final contextSize = context.size;
      if (contextSize != null && oldSize != contextSize) {
        oldSize = contextSize;
        widget.onSize(contextSize);
      }
    });

    return SizeChangedLayoutNotifier(
      child: widget.child,
    );
  }
}
