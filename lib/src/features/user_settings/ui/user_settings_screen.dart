import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/shared/ez_file_uploader/ez_file_uploader.dart';
import 'package:impostor/src/shared/ez_form/ez_form_email_field/ez_form_email_field.dart';
import 'package:impostor/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:impostor/src/shared/ez_header/ez_header.dart';
import 'package:impostor/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';
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
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final locationController = TextEditingController();
    final currentPasswordController = TextEditingController();
    final newPasswordController = TextEditingController();
    final instagramController = TextEditingController();
    final tiktokController = TextEditingController();
    final stravaController = TextEditingController();
    final facebookController = TextEditingController();
    final whatsappController = TextEditingController();
    final snapchatController = TextEditingController();
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
          child: ListView(
            children: [
              EzHeader.displayMedium(
                ref.loc.settingScreenSettings,
              ),
              const SizedBox(height: ConstLayout.spacerSmall),
              // Avatar
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenAvatar,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runSpacing: ConstLayout.spacer,
                  spacing: ConstLayout.spacer,
                  children: [
                    const CircleAvatar(
                      radius: ConstLayout.avatarSmallSize,
                      child: Text('Ez'),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                            runSpacing: ConstLayout.spacer,
                            spacing: ConstLayout.spacer,
                          children: [
                            // one button upload photo an another one delete
                            ElevatedButton(onPressed: () {}, child: Text('Upload photo')),
                            ElevatedButton(onPressed: () {}, child: Text('Delete photo')),
                          ]
                        ),
                        Text('Pick a photo up to 6MB.'),
                      ],
                    )
                  ],
                ),
              ),
              // Cover photo
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenCoverPhoto,
                child: EzFileUploader(
                  onFilesSelected: (files) {
                    print('Files selected: $files');
                  },
                ),
              ),
              EzHeader.displayMedium(
                ref.loc.settingScreenPersonalInformation,
              ),
              const Divider(),
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenName,
                itemDescription: ref.loc.settingScreenNameDescription,
                child: EzTextFormField(
                  hintText: 'John Doe',
                  controller: nameController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenUsername,
                itemDescription: ref.loc.settingScreenUserNameDescription,
                child: EzTextFormField(
                  hintText: 'john_doe',
                  controller: usernameController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenEmail,
                itemDescription: ref.loc.settingScreenEmailDescription,
                child: EzFormEmailField(
                  hintText: 'john.doe@site.com',
                  autovalidateMode: AutovalidateMode.always,
                  controller: emailController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenLocation,
                child: EzTextFormField(
                  hintText: 'Genève, Suisse',
                  controller: locationController,
                ),
              ),
              EzHeader.displayMedium(
                ref.loc.settingScreenPassword,
              ),
              const Divider(),
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenCurrentPassword,
                child: EzTextFormField(
                  hintText: '************',
                  obscureText: true,
                  controller: currentPasswordController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenNewPassword,
                child: EzTextFormField(
                  hintText: '************',
                  obscureText: true,
                  controller: newPasswordController,
                ),
              ),
              EzHeader.displayMedium(
                ref.loc.settingScreenSocialAccounts,
              ),
              const Divider(),
              EzFormItemLayout(
                itemLabel: 'Instagram',
                child: EzTextFormField(
                  hintText: '@username',
                  controller: instagramController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: 'Tiktok',
                child: EzTextFormField(
                  hintText: '@username',
                  controller: tiktokController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: 'Strava',
                child: EzTextFormField(
                  hintText: '@username',
                  controller: stravaController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: 'Facebook',
                child: EzTextFormField(
                  hintText: '@username',
                  controller: facebookController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: 'Whatsapp',
                child: EzTextFormField(
                  hintText: '+41 123 456 789',
                  controller: whatsappController,
                ),
              ),
              EzFormItemLayout(
                itemLabel: 'Snapchat',
                child: EzTextFormField(
                  hintText: '@username',
                  controller: snapchatController,
                ),
              ),
              EzHeader.displayMedium(
                ref.loc.settingScreenDangerZone,
              ),
              const Divider(),
              EzFormItemLayout(
                itemLabel: ref.loc.settingScreenDangerZoneAccountDeletion,
                itemDescription: ref.loc.settingScreenDangerZoneDescription,
                child: RawMaterialButton(
                  onPressed: () {
                    // Add your delete account logic here
                  },
                  shape: SmoothRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .outline
                          .withOpacity(0.2),
                    ),
                    borderRadius: SmoothBorderRadius(
                      cornerRadius: ConstLayout.borderRadiusSmall,
                      cornerSmoothing: ConstLayout.cornerSmoothing,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: ConstLayout.borderRadiusSmall,
                    horizontal: ConstValue.dp32,
                  ),
                  hoverColor: Theme.of(context).
                      colorScheme.surfaceContainerLow,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Text(
                    'Delete Account',
                    // red color
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.red),
                  ),
                ),
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
