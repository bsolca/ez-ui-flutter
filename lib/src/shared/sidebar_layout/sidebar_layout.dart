import 'package:flutter/material.dart';
import 'package:impostor/src/shared/sidebar/sidebar.dart';

class SidebarLayout extends StatefulWidget {
  const SidebarLayout({
    super.key,
    this.logo,
    this.headerText,
    this.headerDropdown,
  });

  final Widget? logo;
  final String? headerText;
  final Widget? headerDropdown;

  @override
  State<SidebarLayout> createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  int currentIndex = 0;
  final ScrollController _scrollController = ScrollController();
  late final List<String> items;
  final List<double> _itemHeights = [];

  @override
  void initState() {
    super.initState();
    items = List.generate(25, (index) => 'Index $index');
    _itemHeights.addAll(List<double>.filled(items.length, 0));
  }

  void _updateItemHeight(int index, double height) {
    setState(() {
      _itemHeights[index] = height;
    });
  }

  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentIndex < 0 || currentIndex >= items.length) {
      currentIndex = 0;
    }

    return Row(
      children: [
        Sidebar(
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
        const Expanded(
          child: Center(child: Text('Content')),
        ),
      ],
    );
  }
}