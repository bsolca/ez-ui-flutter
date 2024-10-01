import 'package:flutter/material.dart';

/// A [SidebarFooter] widget that displays the footer section of the sidebar.
///
/// This widget can include a logo and header text.
class SidebarFooter extends StatelessWidget {
  /// Creates a [SidebarFooter] widget.
  ///
  /// The [logo] and [headerText] parameters are optional.
  const SidebarFooter({
    super.key,
    this.logo,
    this.headerText,
  });

  /// The logo widget displayed in the footer.
  final Widget? logo;

  /// The text displayed in the footer.
  final String? headerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (logo != null) logo!,
          if (headerText != null) Text(headerText!),
        ],
      ),
    );
  }
}
