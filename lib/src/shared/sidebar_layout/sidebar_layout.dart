// sidebar_layout.dart
import 'package:flutter/material.dart';
import 'package:impostor/src/shared/sidebar/model/sidebar_item_data.codegen.dart';
import 'package:impostor/src/shared/sidebar/sidebar.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// A layout widget that includes a sidebar and a main content area.
///
/// The [SidebarLayout] consists of a [Sidebar] on the left and a content
/// area on the right. It manages the state of the currently selected
/// sidebar item and handles scrolling behavior.
class SidebarLayout extends StatefulWidget {
  /// Creates a [SidebarLayout].
  ///
  /// The [logo], [headerText], and [headerDropdown] are optional and can be
  /// used to customize the sidebar's header.
  const SidebarLayout({
    super.key,
    this.logo,
    this.headerText,
    this.headerDropdown,
  });

  /// The logo widget displayed in the sidebar header.
  final Widget? logo;

  /// The header text displayed in the sidebar.
  final String? headerText;

  /// The dropdown widget displayed in the sidebar header.
  final Widget? headerDropdown;

  @override
  State<SidebarLayout> createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  /// The index of the currently selected sidebar item.
  int currentIndex = 0;

  /// Controller for managing the scroll position of the sidebar.
  final ScrollController _scrollController = ScrollController();

  /// The list of sidebar items.
  late final List<SidebarItemData> items;

  /// The heights of each sidebar item.
  final List<double> _itemHeights = [];

  @override
  void initState() {
    super.initState();
    // Initialize a list of 25 sidebar items with optional icons.
    items = List.generate(25, (index) {
      return SidebarItemData(
        text: 'Item $index',
        iconPath: 'assets/hero_icons/home-mini.svg',
        onTap: () => print('Item $index tapped'),
      );
    });
    // Initialize the item heights with zeros.
    _itemHeights.addAll(List<double>.filled(items.length, 0));
  }

  /// Updates the height of a sidebar item at the given [index].
  ///
  /// This method is called when the height of a sidebar item changes.
  void _updateItemHeight(int index, double height) {
    setState(() {
      _itemHeights[index] = height;
    });
  }

  /// Handles the tap event on a sidebar item at the given [index].
  ///
  /// Updates the [currentIndex] to reflect the selected item.
  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Ensure the currentIndex is within valid bounds.
    if (currentIndex < 0 || currentIndex >= items.length) {
      currentIndex = 0;
    }

    final colorBackground = Theme.of(context).brightness == Brightness.dark
        ? Theme.of(context).colorScheme.surface
        : Theme.of(context).colorScheme.surfaceContainer;

    final color = Theme.of(context).brightness == Brightness.dark
        ? Theme.of(context).colorScheme.surfaceContainerHigh
        : Theme.of(context).colorScheme.surface;

    final colorBorder = Theme.of(context).brightness == Brightness.dark
        ? Theme.of(context).colorScheme.surfaceContainer
        : Theme.of(context).colorScheme.surfaceContainerLow;

    return ColoredBox(
      color: colorBackground,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Sidebar(
              logo: widget.logo,
              headerText: widget.headerText,
              headerDropdown: widget.headerDropdown,
              items: items,
              currentIndex: currentIndex,
              onItemTap: _onItemTap,
              scrollController: _scrollController,
              itemHeights: _itemHeights,
              updateItemHeight: _updateItemHeight,
            ),
          ),
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                color: color,
                shape: SmoothRectangleBorder(
                  side: BorderSide(
                    color: colorBorder,
                    width: 0.5,
                  ),
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 10,
                    cornerSmoothing: 0.5,
                  ),
                ),
              ),
              margin: const EdgeInsets.all(8),
              child: const Center(
                child: Text('Content'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
