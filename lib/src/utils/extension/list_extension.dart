import 'package:flutter/material.dart';

/// Extension methods for [List]
extension EzListExtension on List<Widget> {
  /// Returns a [ListView] with a [SizedBox] between each item.
  List<Widget> withSpaceBetween({
    double? width,
    double? height,
    Widget? separatorChild,
  }) {
    return [
      for (int i = 0; i < length; i++) ...[
        if (i > 0)
          SizedBox(
            width: width,
            height: height,
            child: separatorChild,
          ),
        this[i],
      ],
    ];
  }
}
