import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
import 'package:ez_fit_app/src/shared/ez_item/ez_sidebar_item.dart';
import 'package:flutter/material.dart';

class EzDropdownButtonItem<T> extends StatelessWidget {
  const EzDropdownButtonItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  final EzDropdownItem<T> item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return EzItem.checkIcon(
      icon: item.icon,
      text: item.label,
      isSelected: item.isSelected,
      onTap: onTap,
      svgPath: null,
    );
  }
}
