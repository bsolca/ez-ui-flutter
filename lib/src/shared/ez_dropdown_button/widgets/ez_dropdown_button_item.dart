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
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: item.isSelected ? theme.colorScheme.primaryContainer : null,
        ),
        child: EzItem(
          icon: item.icon,
          text: item.label,
          isSelected: item.isSelected,
          onTap: () {},
          svgPath: null,
        ),
      ),
    );
  }
}
