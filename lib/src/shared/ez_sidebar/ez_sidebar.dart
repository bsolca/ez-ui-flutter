import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_footer.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_footer_item.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_header.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_indicator_widget.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_items_list.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_item_data.codegen.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

/// A [EzSidebar] widget that displays a customizable navigation sidebar.
class EzSidebar extends StatefulWidget {
  /// Creates the sidebar widget.
  const EzSidebar({
    super.key,
    required this.logo,
    required this.headerText,
    required this.items,
    required this.currentIndex,
    required this.onItemTap,
    required this.scrollController,
    required this.itemHeights,
    required this.updateItemHeight,
  });

  /// The logo of the sidebar
  final Widget? logo;

  /// The header text of the sidebar
  final String? headerText;

  /// The list of items in the sidebar
  final List<EzSidebarItemData> items;

  /// The index of the currently selected item
  final int currentIndex;

  /// The callback function that is called when an item is tapped
  final ValueChanged<int> onItemTap;

  /// The scroll controller of the sidebar
  final ScrollController scrollController;

  /// The list of item heights
  final List<double> itemHeights;

  /// The callback function that is called when an item height is updated
  final void Function(int, double) updateItemHeight;

  @override
  State<EzSidebar> createState() => _EzSidebarState();
}

class _EzSidebarState extends State<EzSidebar> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // Sidebar background color based on the color scheme
    final sidebarBackgroundColor =
        EzSidebarConsts.getSidebarBackgroundColor(colorScheme);

    // Divider widget using constants
    final divider = Padding(
      padding: EzSidebarConsts.horizontalPadding,
      child: Divider(
        thickness: EzSidebarConsts.dividerThickness,
        color: EzSidebarConsts.getDividerColor(colorScheme),
      ),
    );

    return SizedBox(
      width: EzSidebarConsts.sidebarWidth,
      child: ColoredBox(
        color: sidebarBackgroundColor,
        child: Column(
          children: [
            // Header
            EzSidebarHeader(
              onTap: () => print('Logo tapped'),
              appName: 'Ez Dashboard',
            ),
            divider,
            // Main scrollable area for regular items
            Expanded(
              child: ClipRect(
                child: Stack(
                  children: [
                    WebSmoothScroll(
                      controller: widget.scrollController,
                      child: CustomScrollView(
                        controller: widget.scrollController,
                        physics: const NeverScrollableScrollPhysics(),
                        slivers: [
                          EzSidebarItemsList(
                            items: widget.items,
                            currentIndex: widget.currentIndex,
                            onItemTap: widget.onItemTap,
                            updateItemHeight: widget.updateItemHeight,
                          ),
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                EzSidebarFooterItem(
                                  text: 'Footer Item',
                                  icon: EzIcons.homeMini,
                                  onTap: () {
                                    print('Footer item tapped');
                                  },
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    EzSidebarIndicatorWidget(
                      scrollController: widget.scrollController,
                      itemHeights: widget.itemHeights,
                      selectedIndex: widget.currentIndex,
                      indicatorColor: EzSidebarConsts.getIndicatorColor(
                        Theme.of(context).colorScheme,
                      ),
                      indicatorPadding: EzSidebarConsts.indicatorVerticalPadding,
                    ),
                  ],
                ),
              ),
            ),
            divider,
            // Bottom items and footer fixed at the bottom
            EzSidebarFooter(
              name: 'Benjamin Sx',
              email: 'benjamin@ez.io',
              onTap: () => print('Footer button tapped'),
            ),
          ],
        ),
      ),
    );
  }
}
