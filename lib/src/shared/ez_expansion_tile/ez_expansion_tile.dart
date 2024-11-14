import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:flutter/material.dart';

class EzExpansionTile extends StatelessWidget {
  const EzExpansionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    required this.children,
  });

  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
      ),
      child: ExpansionTile(
        shape: const EzSmoothRectangleBorder(),
        collapsedShape: const EzSmoothRectangleBorder(),
        visualDensity: VisualDensity.compact,
        maintainState: true,
        controlAffinity: ListTileControlAffinity.leading,
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        children: children,
      ),
    );
  }
}
