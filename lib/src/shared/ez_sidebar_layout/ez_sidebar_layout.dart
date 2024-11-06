import 'package:ez_fit_app/src/shared/ez_sidebar/ez_sidebar.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_footer_data.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_header_data.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_item_data.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/widgets/ez_sidebar_footer.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar_layout/ez_sidebar_layout_consts.dart';
import 'package:ez_fit_app/src/utils/responsive/presentation/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A layout widget that includes a sidebar and a main content area.
///
/// The [EzSidebarLayout] consists of a [EzSidebar] on the left and a content
/// area on the right. It manages the state of the currently selected
/// sidebar item and handles scrolling behavior.
@immutable
class EzSidebarLayout extends ConsumerStatefulWidget {
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
  ConsumerState<EzSidebarLayout> createState() => _EzSidebarLayoutState();
}

class _EzSidebarLayoutState extends ConsumerState<EzSidebarLayout> {
  /// The index of the currently selected sidebar item.
  int currentIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    // Ensure the currentIndex is within valid bounds.
    if (currentIndex < 0 || currentIndex >= widget.items.length) {
      currentIndex = 0;
    }

    final colorScheme = Theme.of(context).colorScheme;

    return ResponsiveLayout(
      medium: (child, _) {
        final scrollController = ScrollController();

        return ColoredBox(
          color: EzSidebarLayoutConsts.getSidebarBackgroundColor(colorScheme),
          child: Row(
            children: [
              Padding(
                padding: EzSidebarLayoutConsts.sidebarPadding,
                child: _buildSidebar(scrollController),
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
                  child: child,
                ),
              ),
            ],
          ),
        );
      },
      compact: (child, _) {
        final scrollController = ScrollController();

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
            actions: [
              EzSidebarFooter(
                name: widget.footerData.name,
                email: widget.footerData.email,
                items: widget.footerData.items,
                avatarUrl: widget.footerData.avatarUrl,
              ),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.transparent,
            child: _buildSidebar(scrollController),
          ),
          body: ColoredBox(
            color: EzSidebarLayoutConsts.getContentColor(colorScheme),
            child: child,
          ),
        );
      },
      child: widget.content,
    );
  }

  Widget _buildSidebar(ScrollController scrollController) => EzSidebar(
        headerData: widget.headerData,
        footerData: widget.footerData,
        items: widget.items,
        currentIndex: currentIndex,
        onItemTap: _onItemTap,
        scrollController: scrollController,
        itemHeights: itemHeights,
        updateItemHeight: _updateItemHeight,
      );
}
