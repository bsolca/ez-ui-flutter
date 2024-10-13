import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_button/data/ez_button_enum.dart';
import 'package:impostor/src/shared/ez_button/ez_button.dart';
import 'package:impostor/src/shared/ez_wrap_menu/data/ez_wrapper_tiem.dart';

/// A widget that displays a list of items in a wrap menu.
class EzWrapMenu extends StatefulWidget {
  /// Creates an item in the wrap menu.
  const EzWrapMenu({
    super.key,
    required this.items,
    required this.initialSelectedItem,
  });

  /// A list of items in the wrap menu.
  final List<EzWrapMenuItem> items;

  /// The index of the initial selected item.
  final int initialSelectedItem;

  @override
  State<EzWrapMenu> createState() => _EzWrapMenuState();
}

class _EzWrapMenuState extends State<EzWrapMenu> {
  late int _selectedItemIndex;

  @override
  void initState() {
    super.initState();
    _selectedItemIndex = widget.initialSelectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: List.generate(widget.items.length, (index) {
        final item = widget.items[index];
        final isSelected = index == _selectedItemIndex;

        return EzButton(
          key: ValueKey(index),
          onPressed: () {
            setState(() {
              _selectedItemIndex = index;
            });
            item.onPressed();
          },
          text: item.text,
          icon: item.icon,
          type: isSelected ? EzButtonType.regular : EzButtonType.link,
        );
      }),
    );
  }
}
