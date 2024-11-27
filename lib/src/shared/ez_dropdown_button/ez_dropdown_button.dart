import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/shared/ez_disable/ez_disable.dart';
import 'package:ez_fit_app/src/shared/ez_dropdown_button/widgets/ez_dropdown_button_menu.dart';
import 'package:ez_fit_app/src/shared/ez_icon/hero_icon_icons.dart';
import 'package:ez_fit_app/src/shared/ez_measuring_widget/ez_measuring_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class EzDropdownItem<T> {
  const EzDropdownItem({
    required this.label,
    required this.value,
    this.icon,
    this.isSelected = false,
  });

  final String label;
  final T value;
  final Widget? icon;
  final bool isSelected;
}

class EzDropdownButton<T> extends StatefulWidget {
  const EzDropdownButton({
    super.key,
    required this.text,
    required this.items,
    this.onSelected,
  }) : _type = EzButtonType.regular;

  const EzDropdownButton.outlined({
    super.key,
    required this.text,
    required this.items,
    this.onSelected,
  }) : _type = EzButtonType.outlined;

  const EzDropdownButton.link({
    super.key,
    required this.text,
    required this.items,
    this.onSelected,
  }) : _type = EzButtonType.link;

  final String text;
  final List<EzDropdownItem<T>> items;
  final void Function(T value)? onSelected;
  final EzButtonType _type;

  @override
  State<EzDropdownButton<T>> createState() => _EzDropdownButtonState<T>();
}

class _EzDropdownButtonState<T> extends State<EzDropdownButton<T>> {
  bool _isDropdownVisible = false;
  double buttonWidth = 0;

  @override
  Widget build(BuildContext context) {
    return EzDisable(
      disabled: widget.onSelected == null,
      child: GestureDetector(
        onTap: () {
          if (_isDropdownVisible) {
            SmartDialog.dismiss<T>();
          } else {
            SmartDialog.showAttach<void>(
              maskColor: Colors.transparent,
              targetContext: context,
              useAnimation: false,
              keepSingle: true,
              onDismiss: () => setState(() => _isDropdownVisible = false),
              builder: (_) => EzDropdownButtonMenu(
                items: widget.items,
                buttonWidth: buttonWidth,
                onTap: (T item) {
                  setState(() {
                    widget.onSelected?.call(item);
                    SmartDialog.dismiss<T>();
                    _isDropdownVisible = false;
                  });
                },
              ),
            );
          }
          setState(() {
            _isDropdownVisible = !_isDropdownVisible;
          });
        },
        child: MouseRegion(
          cursor: _getMouseCursor(),
          child: AbsorbPointer(
            child: EzMeasuringWidget(
              onSize: (size) => setState(() => buttonWidth = size.width),
              child: EzButton(
                text: 'DropDown',
                suffixWidget: Icon(
                  HeroIcon.chevronDown,
                  color: _getDefaultTextColor(Theme.of(context).colorScheme),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }

  MouseCursor _getMouseCursor() {
    return (widget.onSelected == null)
        ? SystemMouseCursors.forbidden
        : SystemMouseCursors.click;
  }

  Color _getDefaultTextColor(ColorScheme colorScheme) {
    switch (widget._type) {
      case EzButtonType.link:
        return colorScheme.onSurfaceVariant;
      case EzButtonType.outlined:
        return colorScheme.onSurface
            .withOpacity(widget.onSelected == null ? 0.3 : 1);
      case EzButtonType.regular:
        return colorScheme.onInverseSurface;
    }
  }
}
