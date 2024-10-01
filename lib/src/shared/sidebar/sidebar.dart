import 'package:flutter/material.dart';
import 'package:impostor/src/shared/sidebar/indicator_widget.dart';
import 'package:impostor/src/shared/sidebar/measuring_widget.dart';
import 'package:impostor/src/shared/sidebar/sidebar_footer.dart';
import 'package:impostor/src/shared/sidebar/sidebar_header.dart';
import 'package:impostor/src/shared/sidebar/sidebar_item.dart';

/// A [Sidebar] widget that displays a customizable navigation sidebar.
///
/// This widget includes a header, a list of items with selection
/// indicators, and a footer. It supports dynamic item heights and
/// scrolling.
class Sidebar extends StatelessWidget {
  /// Creates a [Sidebar] widget.
  ///
  /// The [logo], [headerText], [items], [currentIndex], [onItemTap],
  /// [scrollController], [itemHeights], and [updateItemHeight] parameters
  /// are required.
  const Sidebar({
    super.key,
    required this.logo,
    required this.headerText,
    this.headerDropdown,
    required this.items,
    required this.currentIndex,
    required this.onItemTap,
    required this.scrollController,
    required this.itemHeights,
    required this.updateItemHeight,
  });

  /// The logo widget displayed in the header.
  final Widget? logo;

  /// The text displayed in the header.
  final String? headerText;

  /// An optional dropdown widget displayed in the header.
  final Widget? headerDropdown;

  /// The list of item labels to display in the sidebar.
  final List<String> items;

  /// The index of the currently selected item.
  final int currentIndex;

  /// Callback when an item is tapped, providing the tapped item's index.
  final ValueChanged<int> onItemTap;

  /// Controller to manage the scrolling of the item list.
  final ScrollController scrollController;

  /// A list of heights for each sidebar item.
  final List<double> itemHeights;

  /// Updates the height of an item at the given index.
  ///
  /// Takes the item's index and its new height as parameters.
  final void Function(int, double) updateItemHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268,
      color: Colors.red,
      child: Column(
        children: [
          SidebarHeader(
            logo: logo,
            headerText: headerText,
            headerDropdown: headerDropdown,
          ),
          const Divider(color: Colors.blueGrey, thickness: 1),
          Expanded(
            child: Stack(
              children: [
                NotificationListener<SizeChangedLayoutNotification>(
                  onNotification: (notification) => true,
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return MeasuringWidget(
                        onSize: (size) =>
                            updateItemHeight(index, size.height),
                        child: SidebarItem(
                          text: items[index],
                          isSelected: index == currentIndex,
                          onTap: () => onItemTap(index),
                        ),
                      );
                    },
                  ),
                ),
                IndicatorWidget(
                  scrollController: scrollController,
                  itemHeights: itemHeights,
                  selectedIndex: currentIndex,
                  indicatorColor: Colors.green,
                ),
              ],
            ),
          ),
          const Divider(color: Colors.blueGrey, thickness: 1),
          SidebarFooter(
            logo: logo,
            headerText: headerText,
          ),
        ],
      ),
    );
  }
}
