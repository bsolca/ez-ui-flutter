import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_item_data.codegen.dart';

/// A widget that displays a heading item in the sidebar.
class EzSidebarHeadingItem extends StatelessWidget {
  /// A widget that displays a heading item in the sidebar.
  const EzSidebarHeadingItem({
    super.key,
    required this.item,
  });

  /// The heading item data.
  final HeadingSidebarItemData item;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, bottom: 12),
      child: Text(
        item.text,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: EzSidebarConsts.getSidebarItemIconDefaultColor(colorScheme),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
