import 'package:flutter/material.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// A [SidebarItem] widget that represents a single item in the sidebar.
///
/// This widget displays text and indicates selection status.
/// It handles tap interactions to notify when the item is selected.
/// It also provides hover and splash effects for better user interaction.
class SidebarItem extends StatefulWidget {
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
  State<SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<SidebarItem> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: ShapeDecoration(
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 10,
            cornerSmoothing: 0.5,
          ),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
          overlayColor: WidgetStateProperty.all(
            Theme.of(context).colorScheme.inverseSurface.withAlpha(20),
          ),
          borderRadius: BorderRadius.circular(8),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              widget.text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
