import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';

/// A [EzSidebarHeader] widget that displays the header section of the sidebar.
///
/// This widget can include a logo, header text, and an optional dropdown menu.
class EzSidebarHeader extends StatelessWidget {
  /// Creates a [EzSidebarHeader] widget.
  ///
  /// The [logo], [headerText], and [headerDropdown] parameters are optional.
  const EzSidebarHeader({
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
      padding: EzSidebarConsts.headerPadding,
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
