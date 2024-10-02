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
  const EzSidebar({
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

  final Widget? logo;
  final String? headerText;
  final Widget? headerDropdown;
  final List<EzSidebarItemData> items;
  final int currentIndex;
  final ValueChanged<int> onItemTap;
  final ScrollController scrollController;
  final List<double> itemHeights;
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
