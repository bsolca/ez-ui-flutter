import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';

/// Dropdown button for various categories.
class UserSettingsDropDownCategory<T> extends ConsumerWidget {
  /// Dropdown button for various categories.
  const UserSettingsDropDownCategory({
    super.key,
    required this.value,
    required this.onChanged,
    required this.items,
  });

  /// The current value of the dropdown button.
  final T value;

  /// The callback when the value of the dropdown button changes.
  final ValueChanged<T?> onChanged;

  /// The items of the dropdown button.
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton2<T>(
      enableFeedback: true,
      underline: const SizedBox.shrink(),
      buttonStyleData: ButtonStyleData(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(ConstLayout.borderRadius),
        ),
      ),
      dropdownStyleData: const DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(ConstLayout.borderRadius),
          ),
        ),
      ),
      value: value,
      onChanged: onChanged,
      items: items,
    );
  }
}

/// Builds a dropdown menu item.
DropdownMenuItem<String> buildDropdownMenuItem(String text, Widget icon) {
  return DropdownMenuItem(
    value: text,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        Text(text),
      ].withSpaceBetween(
        width: ConstLayout.spacerSmall,
      ),
    ),
  );
}
