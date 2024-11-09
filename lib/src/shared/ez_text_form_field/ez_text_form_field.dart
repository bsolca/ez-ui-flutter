import 'package:ez_fit_app/src/shared/ez_icon/hero_icon_icons.dart';
import 'package:ez_fit_app/src/shared/ez_icon_button/ez_icon_button.dart';
import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Styled text form field.
class EzTextFormField extends ConsumerWidget {
  /// Styled text form field.
  const EzTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
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
    this.enable = true,
  })  : buttonText = null,
        onButtonPressed = null;

  /// Styled text form field with button.
  const EzTextFormField.withButton({
    super.key,
    required this.hintText,
    required this.controller,
    this.inputFormatters,
    this.focusNode,
    this.onEditingComplete,
    this.validator,
    this.autovalidateMode,
    this.maxLength,
    this.autofocus = false,
    this.obscureText = false,
    this.isClearable = false,
    this.enable = true,
    required String this.buttonText,
    required VoidCallback this.onButtonPressed,
  }) : maxLines = 1;

  /// Mandatory hint text.
  final String hintText;

  /// Controller of the text form field.
  final TextEditingController controller;

  /// Input formatters of the text form field.
  final List<TextInputFormatter>? inputFormatters;

  /// Focus node of the text form field.
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.editableText.onEditingComplete}
  final void Function()? onEditingComplete;

  /// Validator of the text form field.
  final String? Function(String?)? validator;

  /// Auto validate mode of the text form field.
  final AutovalidateMode? autovalidateMode;

  /// Max length of the text form field.
  final int? maxLength;

  /// Whether the text form field is autofocus or not.
  final bool autofocus;

  /// Whether the text form field obscure text or not.
  final bool obscureText;

  /// Whether the text form field is clearable or not.
  final bool isClearable;

  /// Widget to be displayed inside the button.
  final String? buttonText;

  /// Callback to be called when the button is pressed.
  final VoidCallback? onButtonPressed;

  /// Max lines of the text form field.
  final int? maxLines;

  final bool enable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonText = this.buttonText;
    final isWithButton = buttonText != null && onButtonPressed != null;
    const radius = EzConstLayout.borderRadiusSmall;
    final borderRadius = isWithButton
        ? const EzSmoothBorderRadius.horizontal(
            right: EzSmoothRadius(
              cornerRadius: 0,
              cornerSmoothing: 0,
            ),
          )
        : EzSmoothBorderRadius(
            cornerRadius: radius,
            cornerSmoothing: EzConstLayout.cornerSmoothing,
          );

    final fieldWidget = Opacity(
      opacity: enable ? 1 : EzConstLayout.disabledOpacity,
      child: TextFormField(
        enabled: enable,
        mouseCursor:
            enable ? SystemMouseCursors.text : SystemMouseCursors.forbidden,
        controller: controller,
        autofocus: autofocus,
        focusNode: focusNode,
        inputFormatters: inputFormatters,
        validator: validator,
        autovalidateMode: autovalidateMode,
        maxLength: maxLength,
        obscureText: obscureText,
        onEditingComplete: onEditingComplete,
        maxLines: maxLines ?? 1,
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
          suffixIcon: isClearable && controller.text.isNotEmpty
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
              SizedBox(
                height: EzConstLayout.itemHeight,
                child: ElevatedButton(
                  onPressed: onButtonPressed,
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryContainer,
                    shape: const RoundedRectangleBorder(
                      borderRadius: EzSmoothBorderRadius.basic,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      buttonText,
                      style: Theme.of(context).textTheme.bodySmall,
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
