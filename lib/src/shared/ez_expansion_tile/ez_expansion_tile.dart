import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';

class EzExpansionTile extends StatelessWidget {
  const EzExpansionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.tileBgColor,
    this.bgChildrenColor,
    required this.children,
  });

  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final List<Widget> children;
  final Color? tileBgColor;
  final Color? bgChildrenColor;

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
        backgroundColor: tileBgColor,
        collapsedBackgroundColor: tileBgColor,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        children: [
          Container(
            color: bgChildrenColor,
            child: Padding(
              padding: const EdgeInsets.all(
                EzConstLayout.spacerSmall,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
