import 'package:flutter/material.dart';
import 'package:impostor/src/shared/sidebar_layout/indicator_widget.dart';

/// A layout with a sidebar and a scroll indicator.
///
/// The [SidebarLayout] includes a sidebar that displays a list of items. When
/// an item is tapped, it updates the current selection and an indicator moves
/// alongside the item. The sidebar also supports displaying a logo, header
/// text, and a dropdown in the header.
class SidebarLayout extends StatefulWidget {
  /// A layout with a sidebar and a scroll indicator.
  const SidebarLayout({
    super.key,
    this.logo,
    this.headerText,
    this.headerDropdown,
  });

  /// The logo widget displayed in the header, typically an image or icon.
  final Widget? logo;

  /// The text displayed in the header, next to the logo.
  final String? headerText;

  /// An optional dropdown widget in the header.
  final Widget? headerDropdown;

  @override
  State<SidebarLayout> createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  /// The index of the currently selected item.
  int currentIndex = 0;

  /// A [ScrollController] to track and control the scroll position of the list.
  final ScrollController _scrollController = ScrollController();

  /// A list of items displayed in the sidebar.
  late final List<String> items;

  /// A list of item heights, which stores the measured height of each item in
  /// the sidebar for accurate indicator positioning.
  final List<double> _itemHeights = [];

  @override
  void initState() {
    super.initState();

    // Initialize the items list with 25 items
    items = List.generate(25, (index) => 'Index $index');

    // Initialize item heights with zeros
    _itemHeights.addAll(List<double>.filled(items.length, 0));
  }

  /// Updates the height of the item at the given [index].
  void _updateItemHeight(int index, double height) {
    setState(() {
      _itemHeights[index] = height;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Ensure that the current index is valid
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
                padding: const EdgeInsets.all(16),
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
                          final isCurrent = index == currentIndex;
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    color:
                                        isCurrent ? Colors.blue : Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Scroll Indicator
                    IndicatorWidget(
                      scrollController: _scrollController,
                      itemHeights: _itemHeights,
                      selectedIndex: currentIndex,
                      indicatorColor: Colors.green,
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
                padding: const EdgeInsets.all(16),
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
        const Expanded(
          child: Center(child: Text('Content')),
        ),
      ],
    );
  }
}

/// A widget that measures its size and reports it via the [onSize] callback.
///
/// The MeasuringWidget is used to track the size of each item in the sidebar
/// for accurate scroll indicator positioning.
class _MeasuringWidget extends StatefulWidget {
  /// Creates a [_MeasuringWidget] with the given [child] and [onSize] callback.
  ///
  /// - [child] is the widget whose size will be measured.
  /// - [onSize] is the callback that reports the size of the [child] after it
  ///   has been laid out.
  const _MeasuringWidget({
    required this.child,
    required this.onSize,
  });

  /// The child widget whose size is being measured.
  final Widget child;

  /// Callback that reports the size of the child after layout.
  final ValueChanged<Size> onSize;

  @override
  __MeasuringWidgetState createState() => __MeasuringWidgetState();
}

class __MeasuringWidgetState extends State<_MeasuringWidget> {
  /// Stores the previously reported size.
  Size? oldSize;

  @override
  Widget build(BuildContext context) {
    // Report the size after layout
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
