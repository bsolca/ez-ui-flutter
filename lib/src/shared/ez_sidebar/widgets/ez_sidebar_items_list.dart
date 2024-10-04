import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_sidebar/widgets/ez_sidebar_heading_item.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_item_data.codegen.dart';
import 'package:impostor/src/shared/ez_sidebar/widgets/ez_sidebar_regular_item.dart';
import 'package:impostor/src/shared/measuring_widget/measuring_widget.dart';

/// Represents a list of sidebar items.
class EzSidebarItemsList extends StatelessWidget {
  /// Creates the list of sidebar items.
  const EzSidebarItemsList({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onItemTap,
    required this.updateItemHeight,
  });

  /// The list of sidebar items.
  final List<EzSidebarItemData> items;

  /// The index of the currently selected sidebar item.
  final int currentIndex;

  /// Handles the tap event on a sidebar item at the given index.
  final ValueChanged<int> onItemTap;

  /// Updates the height of a sidebar item at the given index.
  final void Function(int, double) updateItemHeight;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final item = items[index];

          return MeasuringWidget(
            onSize: (size) => updateItemHeight(index, size.height),
            child: item is HeadingSidebarItemData
                ? EzSidebarHeadingItem(item: item)
                : item is RegularSidebarItemData
                ? EzSidebarRegularItem(
              item: item,
              isSelected: index == currentIndex,
              onTap: () {
                onItemTap(index);
                item.onTap.call();
              },
            )
                : const SizedBox.shrink(),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
