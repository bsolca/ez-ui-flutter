import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/shared/ez_disable/ez_disable.dart';
import 'package:ez_fit_app/src/shared/ez_dropdown_button/ez_dropdown_button.dart';
import 'package:ez_fit_app/src/shared/ez_icon/hero_icon_icons.dart';
import 'package:ez_fit_app/src/shared/ez_icon_button/ez_icon_button.dart';
import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Private enum for constructor.
enum _EzTextFormFieldConstructor {
  plain,
  withButton,
}

/// Styled text form field.
class EzTextFormField extends ConsumerWidget {
  /// Styled text form field.
  const EzTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.inputFormatters,
    this.focusNode,
    this.onEditingComplete,
    this.validator,
    this.autovalidateMode,
    this.maxLength,
    this.autofocus = false,
    this.obscureText = false,
    this.isClearable = false,
    this.maxLines,
    this.disabled = false,
    this.keyboardType,
    this.mouseCursor,
    this.onTap,
    this.ignorePointers,
    this.onChanged,
    this.initialValue,
    this.borderRadius,
  })  : buttonText = null,
        onButtonPressed = null,
        _type = _EzTextFormFieldConstructor.plain;

  /// Styled text form field with button.
  const EzTextFormField.withButton({
    super.key,
    required this.hintText,
    this.controller,
    this.inputFormatters,
    this.focusNode,
    this.onEditingComplete,
    this.validator,
    this.autovalidateMode,
    this.maxLength,
    this.autofocus = false,
    this.obscureText = false,
    this.isClearable = false,
    required String this.buttonText,
    required VoidCallback this.onButtonPressed,
    this.disabled = false,
    this.keyboardType,
    this.mouseCursor,
    this.onTap,
    this.ignorePointers,
    this.onChanged,
    this.initialValue,
    this.borderRadius,
  })  : maxLines = 1,
        _type = _EzTextFormFieldConstructor.withButton;

  final String hintText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final int? maxLength;
  final bool autofocus;
  final bool obscureText;
  final bool isClearable;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final int? maxLines;
  final bool disabled;
  final TextInputType? keyboardType;
  final bool? ignorePointers;
  final MouseCursor? mouseCursor;
  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final String? initialValue;
  final EzSmoothBorderRadius? borderRadius;

  final _EzTextFormFieldConstructor _type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonText = this.buttonText;
    final controller = this.controller;
    final isWithButton = buttonText != null && onButtonPressed != null;
    const radius = EzConstLayout.borderRadiusSmall;
    final borderRadius = this.borderRadius ??
        (isWithButton
            ? const EzSmoothBorderRadius.horizontal(
                right: EzSmoothRadius(
                  cornerRadius: 0,
                  cornerSmoothing: 0,
                ),
              )
            : EzSmoothBorderRadius(
                cornerRadius: radius,
                cornerSmoothing: EzConstLayout.cornerSmoothing,
              ));

    final fieldWidget = EzDisable(
      disabled: disabled,
      child: TextFormField(
        initialValue: initialValue,
        controller: controller,
        autofocus: autofocus,
        focusNode: focusNode,
        onChanged: (text) => onChanged?.call(text),
        inputFormatters: inputFormatters,
        validator: validator,
        autovalidateMode: autovalidateMode,
        maxLength: maxLength,
        obscureText: obscureText,
        onEditingComplete: onEditingComplete,
        maxLines: maxLines ?? 1,
        keyboardType: keyboardType,
        mouseCursor: mouseCursor,
        onTap: onTap,
        ignorePointers: ignorePointers,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context)
                    .colorScheme
                    .onSecondaryContainer
                    .withOpacity(
                      0.5,
                    ),
              ),
          isDense: true,
          // To have 40 height to respect ConstLayout.itemHeight
          contentPadding: const EdgeInsets.all(14),
          fillColor: Theme.of(context).colorScheme.surfaceContainerHigh,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 0.5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
              width: 0.5,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide.none,
          ),
          suffixIcon:
              isClearable && controller != null && controller.text.isNotEmpty
                  ? EzIconButton(
                      icon: HeroIcon.xMark,
                      onPressed: controller.clear,
                    )
                  : null,
        ),
      ),
    );

    final textFormFieldWidget = isWithButton
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: fieldWidget,
              ),
              if (_type == _EzTextFormFieldConstructor.withButton)
                SizedBox(
                  height: EzConstLayout.itemHeight,
                  child: EzButton(
                    type: EzButtonType.outlined,
                    onPressed: onButtonPressed,
                    text: buttonText,
                    borderRadius: EzSmoothBorderRadius.basic.copyWith(
                      bottomLeft: const EzSmoothRadius(
                        cornerRadius: 0,
                        cornerSmoothing: 0,
                      ),
                      topLeft: const EzSmoothRadius(
                        cornerRadius: 0,
                        cornerSmoothing: 0,
                      ),
                    ),
                  ),
                ),
            ],
          )
        : fieldWidget;

    // Padding to fix the borders being cut by other widgets.
    return Padding(
      padding: const EdgeInsets.all(0.3),
      child: textFormFieldWidget,
    );
  }
}

/// Subclass for styled text form fields with a dropdown.
class EzTextFormFieldWithDropdown<T> extends EzTextFormField {
  const EzTextFormFieldWithDropdown({
    super.key,
    required super.hintText,
    super.controller,
    super.inputFormatters,
    super.focusNode,
    super.onEditingComplete,
    super.validator,
    super.autovalidateMode,
    super.maxLength,
    super.autofocus,
    super.obscureText,
    super.isClearable,
    super.maxLines = 1,
    super.disabled,
    super.keyboardType,
    super.mouseCursor,
    super.onTap,
    super.ignorePointers,
    super.onChanged,
    super.initialValue,
    required this.dropdownText,
    required this.items,
    required this.onSelected,
    required this.menuWidth,
  }) : super(
          borderRadius: const EzSmoothBorderRadius.horizontal(
            right: EzSmoothRadius(
              cornerRadius: 0,
              cornerSmoothing: 0,
            ),
          ),
        );

  final String dropdownText;
  final List<EzDropdownItem<T>> items;
  final void Function(T) onSelected;
  final double menuWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use the base class's build method for the common UI
    final baseWidget = super.build(
      context,
      ref,
    );

    // Add dropdown-specific functionality
    return SizedBox(
      height: EzConstLayout.itemHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: baseWidget),
          EzDropdownButton<T>(
            text: dropdownText,
            items: items,
            menuWidth: menuWidth,
            onSelected: onSelected,
            borderRadius: const EzSmoothBorderRadius.horizontal(
              left: EzSmoothRadius(
                cornerRadius: 0,
                cornerSmoothing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
