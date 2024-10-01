import 'package:flutter/material.dart';

/// A [SidebarItem] widget that represents a single item in the sidebar.
///
/// This widget displays text and indicates selection status.
/// It handles tap interactions to notify when the item is selected.
class SidebarItem extends StatelessWidget {
  /// Creates a [SidebarItem] widget.
  ///
  /// The [text], [isSelected], and [onTap] parameters are required.
  const SidebarItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  /// The text label of the sidebar item.
  final String text;

  /// Whether the sidebar item is currently selected.
  final bool isSelected;

  /// Callback invoked when the sidebar item is tapped.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
