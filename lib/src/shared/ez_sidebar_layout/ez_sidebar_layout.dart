import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_footer_data.codegen.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_header_data.codegen.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_item_data.codegen.dart';
import 'package:impostor/src/shared/ez_sidebar_layout/ez_sidebar_layout_consts.dart';
import 'package:impostor/src/utils/responsive/presentation/responsive_layout.dart';

/// A layout widget that includes a sidebar and a main content area.
///
/// The [EzSidebarLayout] consists of a [EzSidebar] on the left and a content
/// area on the right. It manages the state of the currently selected
/// sidebar item and handles scrolling behavior.
@immutable
class EzSidebarLayout extends StatefulWidget {
  /// Creates a [EzSidebarLayout].
  const EzSidebarLayout({
    super.key,
    required this.headerData,
    required this.footerData,
    required this.items,
    required this.content,
  });

  /// Header data for the sidebar header.
  final EzSidebarHeaderData headerData;

  /// Footer data for the sidebar footer.
  final EzSidebarFooterData footerData;

  /// The list of sidebar items.
  ///
  /// Can be Regular, Heading or Bottom items.
  final List<EzSidebarItemData> items;

  /// Content area widget.
  final Widget content;

  @override
  State<EzSidebarLayout> createState() => _EzSidebarLayoutState();
}

class _EzSidebarLayoutState extends State<EzSidebarLayout> {
  /// The index of the currently selected sidebar item.
  int currentIndex = 0;

  /// Controller for managing the scroll position of the sidebar.
  final ScrollController _scrollController = ScrollController();

  /// The heights of each sidebar item.
  final List<double> itemHeights = [];

  @override
  void initState() {
    super.initState();
    // Initialize the item heights with zeros.
    itemHeights.addAll(List<double>.filled(widget.items.length, 0));
  }

  /// Updates the height of a sidebar item at the given [index].
  ///
  /// This method is called when the height of a sidebar item changes.
  void _updateItemHeight(int index, double height) {
    setState(() {
      itemHeights[index] = height;
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

  final sidebarKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // Ensure the currentIndex is within valid bounds.
    if (currentIndex < 0 || currentIndex >= widget.items.length) {
      currentIndex = 0;
    }

    final colorScheme = Theme.of(context).colorScheme;

    return ResponsiveLayout(
      medium: (_, children) {
        return ColoredBox(
          color: EzSidebarLayoutConsts.getSidebarBackgroundColor(colorScheme),
          child: Row(
            children: [
              Padding(
                padding: EzSidebarLayoutConsts.sidebarPadding,
                child: children![0],
              ),
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    color: EzSidebarLayoutConsts.getContentColor(colorScheme),
                    shape: EzSidebarLayoutConsts.getContentShapeBorder(
                      colorScheme,
                    ),
                  ),
                  margin: EzSidebarLayoutConsts.contentMargin,
                  child: children[1],
                ),
              ),
            ],
          ),
        );
      },
      compact: (_, children) {
        final sidebarWidget = children![0];
        final contentWidget = children[1];
        return Scaffold(
          appBar: AppBar(
            backgroundColor: EzSidebarLayoutConsts.getContentColor(colorScheme),
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ),
          drawer: Drawer(
            backgroundColor: Colors.transparent,
            child: sidebarWidget,
          ),
          body: ColoredBox(
            color: EzSidebarLayoutConsts.getContentColor(colorScheme),
            child: contentWidget,
          ),
        );
      },
      children: [
        EzSidebar(
          key: sidebarKey,
          headerData: widget.headerData,
          footerData: widget.footerData,
          items: widget.items,
          currentIndex: currentIndex,
          onItemTap: _onItemTap,
          scrollController: _scrollController,
          itemHeights: itemHeights,
          updateItemHeight: _updateItemHeight,
        ),
        widget.content,
      ],
    );
  }
}
