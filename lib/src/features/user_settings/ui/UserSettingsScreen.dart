import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:email_validator/email_validator.dart';
import 'package:impostor/src/shared/ez_header/ez_header.dart';
import 'package:impostor/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/constants/const_value.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';
import 'package:impostor/src/utils/extension/widget_ref_extension.dart';

/// A screen that displays the user settings.
class UserSettingsScreen extends ConsumerWidget {
  /// Screen that displays the user settings.
  const UserSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = TextEditingController();
    final isCompact = ref.isCompactScreen;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: ConstValue.dp1024,
          ),
          padding: EdgeInsets.symmetric(
            vertical: ConstLayout.spacerSmall,
            horizontal: isCompact ? ConstLayout.spacer : ConstValue.dp64,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EzHeader.displayMedium(
                'User Settings',
                subText: 'Auto saving enabled',
              ),
              const Divider(),
              EzTextFormField(
                textLabel: 'Name',
                hintText: 'John Doe',
                controller: nameController,
              ),
              EzTextFormField.withButton(
                textLabel: 'Email',
                hintText: 'john@site.com',
                controller: TextEditingController(),
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  const errorMessage = 'Please enter a valid email address.';
                  if (value == null || value.isEmpty) {
                    return errorMessage;
                  }
                  return EmailValidator.validate(value) ? null : errorMessage;
                },
                buttonText: 'Save',
                onButtonPressed: () => print('Save Tapped'),
              ),
            ].withSpaceBetween(
              height: ConstLayout.spacerSmall,
            ),
          ),
        ),
      ),
    );
  }
}
