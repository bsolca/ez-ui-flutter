// sidebar_layout.dart
import 'package:flutter/material.dart';
import 'indicator_widget.dart'; // Adjust the path as necessary

class SidebarLayout extends StatefulWidget {
  const SidebarLayout({
    Key? key,
    this.logo,
    this.headerText,
    this.headerDropdown,
  }) : super(key: key);

  /// Logo of the app.
  final Widget? logo;

  /// Header text of the app.
  final String? headerText;

  final Widget? headerDropdown;

  @override
  _SidebarLayoutState createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  int currentIndex = 0;
  final ScrollController _scrollController = ScrollController();
  late final List<String> items;
  final List<double> _itemHeights = [];

  @override
  void initState() {
    super.initState();

    // Initialize the items list
    items = List.generate(25, (index) => 'Index $index');

    // Initialize item heights with zeros
    _itemHeights.addAll(List<double>.filled(items.length, 0.0));
  }

  void _updateItemHeight(int index, double height) {
    setState(() {
      _itemHeights[index] = height;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Validate currentIndex
    if (currentIndex < 0 || currentIndex >= items.length) {
      currentIndex = 0;
    }

    return Row(
      children: [
        Container(
          width: 268,
          color: Colors.red,
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    if (widget.logo != null) widget.logo!,
                    if (widget.headerText != null) Text(widget.headerText!),
                  ],
                ),
              ),
              const Divider(
                color: Colors.blueGrey,
                thickness: 1,
              ),
              // Main List
              Expanded(
                child: Stack(
                  children: [
                    NotificationListener<SizeChangedLayoutNotification>(
                      onNotification: (notification) {
                        return true;
                      },
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          bool isCurrent = index == currentIndex;
                          return _MeasuringWidget(
                            onSize: (size) =>
                                _updateItemHeight(index, size.height),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              child: Container(
                                color: Colors.transparent,
                                alignment: Alignment.centerLeft,
                                padding:
                                const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    color: isCurrent ? Colors.blue : Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Add IndicatorWidget without external IgnorePointer
                    IndicatorWidget(
                      scrollController: _scrollController,
                      itemHeights: _itemHeights,
                      selectedIndex: currentIndex,
                      indicatorColor: Colors.blue,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.blueGrey,
                thickness: 1,
              ),
              // Footer
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    if (widget.logo != null) widget.logo!,
                    if (widget.headerText != null) Text(widget.headerText!),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Main Content Area
        Expanded(
          child: const Center(child: Text('Content')),
        ),
      ],
    );
  }
}

class _MeasuringWidget extends StatefulWidget {
  const _MeasuringWidget({
    Key? key,
    required this.child,
    required this.onSize,
  }) : super(key: key);

  final Widget child;
  final ValueChanged<Size> onSize;

  @override
  __MeasuringWidgetState createState() => __MeasuringWidgetState();
}

class __MeasuringWidgetState extends State<_MeasuringWidget> {
  Size? oldSize;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final contextSize = context.size;
      if (contextSize != null && oldSize != contextSize) {
        oldSize = contextSize;
        widget.onSize(contextSize);
      }
    });

    return SizeChangedLayoutNotifier(
      child: widget.child,
    );
  }
}
