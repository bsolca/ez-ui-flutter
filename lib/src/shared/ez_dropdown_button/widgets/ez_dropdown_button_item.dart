import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (item.icon != null) ...[
              item.icon!,
              const SizedBox(width: 8),
            ],
            Text(
              item.label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: item.isSelected
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurface,
              ),
            ),
            if (item.isSelected)
              Icon(
                Icons.check,
                color: theme.colorScheme.primary,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}
