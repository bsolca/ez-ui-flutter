import 'package:flutter/material.dart';

/// A [SidebarHeader] widget that displays the header section of the sidebar.
///
/// This widget can include a logo, header text, and an optional dropdown menu.
class SidebarHeader extends StatelessWidget {
  /// Creates a [SidebarHeader] widget.
  ///
  /// The [logo], [headerText], and [headerDropdown] parameters are optional.
  const SidebarHeader({
    super.key,
    this.logo,
    this.headerText,
    this.headerDropdown,
  });

  /// The logo widget displayed in the header.
  final Widget? logo;

  /// The text displayed in the header.
  final String? headerText;

  /// An optional dropdown widget displayed in the header.
  final Widget? headerDropdown;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (logo != null) logo!,
          if (headerText != null) Text(headerText!),
          if (headerDropdown != null) headerDropdown!,
        ],
      ),
    );
  }
}
