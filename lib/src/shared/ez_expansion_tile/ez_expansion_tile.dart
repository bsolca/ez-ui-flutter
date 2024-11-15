import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

enum _EzExpansionTileTypeEnum {
  basic,
  error,
  loading,
}

class EzExpansionTile extends StatelessWidget {
  const EzExpansionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.tileBgColor,
    this.bgChildrenColor,
    required List<Widget> this.children,
  }) : _type = _EzExpansionTileTypeEnum.basic;

  const EzExpansionTile.error({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
  })  : children = null,
        tileBgColor = null,
        bgChildrenColor = null,
        _type = _EzExpansionTileTypeEnum.error;

  const EzExpansionTile.loading({
    super.key,
  })  : title = const Text('No title'),
        children = null,
        subtitle = null,
        trailing = null,
        tileBgColor = null,
        bgChildrenColor = null,
        _type = _EzExpansionTileTypeEnum.loading;

  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final List<Widget>? children;
  final Color? tileBgColor;
  final Color? bgChildrenColor;
  final _EzExpansionTileTypeEnum _type;

  @override
  Widget build(BuildContext context) {
    final widget = Theme(
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
                children: children ?? [],
              ),
            ),
          ),
        ],
      ),
    );

    if (_type == _EzExpansionTileTypeEnum.loading) {
      return Skeletonizer(
        child: widget,
      );
    } else if (_type == _EzExpansionTileTypeEnum.error) {
      return EzClipSmoothRect(
        child: ColoredBox(
          color: Theme.of(context).colorScheme.errorContainer,
          child: ListTile(
            shape: const EzSmoothRectangleBorder(),
            visualDensity: VisualDensity.compact,
            title: title,
            subtitle: subtitle,
            trailing: trailing,
          ),
        ),
      );
    }

    return widget;
  }
}
