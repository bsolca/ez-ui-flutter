import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_popover_item_data.codegen.dart';
import 'package:impostor/src/shared/ez_sidebar/widgets/ez_sidebar_divider.dart';
import 'package:impostor/src/shared/ez_sidebar/widgets/ez_sidebar_item.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// Represents a popover with a list of items in the sidebar.
class EzSidebarPopover extends StatelessWidget {
  /// Creates a popover for the header section of the sidebar.
  const EzSidebarPopover({
    super.key,
    required this.child,
    required this.controller,
    required this.items,
    required this.offset,
  });

  /// Widget to tap to open the popover.
  final Widget child;

  /// Controller of the popover.
  final MenuController controller;

  /// Items to display in the popover.
  final List<EzSidebarPopoverItemData> items;

  /// Offset of the popover.
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return MenuAnchor(
      builder: (context, controller, _) {
        return child;
      },
      controller: controller,
      alignmentOffset: offset,
      style: MenuStyle(
        padding: WidgetStateProperty.all(EzSidebarConsts.allPadding),
        elevation: WidgetStateProperty.all(0),
        backgroundColor: WidgetStateProperty.all(
          EzSidebarConsts.getPopoverColor(colorScheme),
        ),
        shape: WidgetStateProperty.all(
          SmoothRectangleBorder(
            side: BorderSide(
              color: EzSidebarConsts.getPopoverBorderColor(colorScheme),
            ),
            borderRadius: const SmoothBorderRadius.all(
              SmoothRadius(
                cornerRadius: EzSidebarConsts.itemBorderRadius,
                cornerSmoothing: EzSidebarConsts.itemBorderSmoothing,
              ),
            ),
          ),
        ),
      ),
      menuChildren: [
        // MenuStyle.minWidth in MenuAnchor doesn't work, this is a workaround.
        SizedBox(
          width: EzSidebarConsts.popoverWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: items.map((item) {
              if (item is EzRegularSidebarPopoverItemData) {
                return EzSidebarItem(
                  text: item.text,
                  icon: item.icon,
                  isSelected: false,
                  onTap: item.onTap,
                );
              }
              return const EzSidebarDivider();
            }).toList(),
          ),
        ),
      ],
    );
  }
}
