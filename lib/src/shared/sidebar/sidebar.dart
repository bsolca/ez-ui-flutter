// sidebar.dart
import 'package:flutter/material.dart';
import 'package:impostor/src/shared/measuring_widget/measuring_widget.dart';
import 'package:impostor/src/shared/sidebar/sidebar_consts.dart';
import 'package:impostor/src/shared/sidebar/sidebar_footer.dart';
import 'package:impostor/src/shared/sidebar/sidebar_header.dart';
import 'package:impostor/src/shared/sidebar/sidebar_indicator_widget.dart';
import 'package:impostor/src/shared/sidebar/sidebar_item.dart';

/// A [Sidebar] widget that displays a customizable navigation sidebar.
///
/// This widget includes a header, a list of items with selection
/// indicators, and a footer. It supports dynamic item heights and
/// scrolling.
class Sidebar extends StatefulWidget {
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
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // Determine the sidebar background color based on the flag
    final sidebarBackgroundColor = SidebarConsts.getSidebarBackgroundColor(
      colorScheme,
    );

    // Define the divider widget using constants and dynamic colors
    final divider = Padding(
      padding: SidebarConsts.dividerPadding,
      child: Divider(
        thickness: SidebarConsts.dividerThickness,
        color: SidebarConsts.getDividerColor(colorScheme),
      ),
    );

    return SizedBox(
      width: SidebarConsts.sidebarWidth,
      child: ColoredBox(
        color: sidebarBackgroundColor,
        child: Column(
          children: [
            SidebarHeader(
              logo: widget.logo,
              headerText: widget.headerText,
              headerDropdown: widget.headerDropdown,
            ),
            divider,
            Expanded(
              child: Stack(
                children: [
                  NotificationListener<SizeChangedLayoutNotification>(
                    onNotification: (notification) => true,
                    child: ListView.builder(
                      controller: widget.scrollController,
                      itemCount: widget.items.length,
                      itemBuilder: (context, index) {
                        return MeasuringWidget(
                          onSize: (size) => widget.updateItemHeight(
                            index,
                            size.height,
                          ),
                          child: Padding(
                            padding: SidebarConsts.itemPadding,
                            child: SidebarItem(
                              text: widget.items[index],
                              isSelected: index == widget.currentIndex,
                              onTap: () => widget.onItemTap(index),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SidebarIndicatorWidget(
                    scrollController: widget.scrollController,
                    itemHeights: widget.itemHeights,
                    selectedIndex: widget.currentIndex,
                    indicatorColor: SidebarConsts.getIndicatorColor(
                      colorScheme,
                    ),
                    indicatorPadding: SidebarConsts.indicatorPadding,
                  ),
                ],
              ),
            ),
            divider,
            SidebarFooter(
              logo: widget.logo,
              headerText: widget.headerText,
            ),
          ],
        ),
      ),
    );
  }
}
