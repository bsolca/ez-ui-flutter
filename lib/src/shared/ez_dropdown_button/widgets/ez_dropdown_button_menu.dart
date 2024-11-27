import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
import 'package:ez_fit_app/src/shared/ez_dropdown_button/widgets/ez_dropdown_button_item.dart';
import 'package:flutter/material.dart';

class EzDropdownButtonMenu<T> extends StatelessWidget {
  const EzDropdownButtonMenu({
    super.key,
    required this.items,
    required this.onTap,
    required this.buttonWidth,
  });

  final List<EzDropdownItem<T>> items;
  final void Function(T value) onTap;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        constraints: BoxConstraints(
          maxWidth: buttonWidth,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: items
                .map(
                  (item) => EzDropdownButtonItem(
                    item: item,
                    onTap: () => onTap.call(item.value),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
