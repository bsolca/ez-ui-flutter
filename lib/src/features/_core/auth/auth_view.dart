import 'package:ez_fit_app/src/features/_core/auth/auth_controller.codegen.dart';
import 'package:ez_fit_app/src/features/user_settings/ui/controller/user_settings_brightness_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_button/model/ez_button_enum.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_email_field/ez_form_email_field.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_icon/ez_icons.dart';
import 'package:ez_fit_app/src/shared/ez_icon/hero_icon_icons.dart';
import 'package:ez_fit_app/src/shared/ez_image/ez_image.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:ez_fit_app/src/utils/ez_toast/ez_toast.dart';
import 'package:ez_fit_app/src/utils/localization/get_locale.codegen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthView extends ConsumerStatefulWidget {
  const AuthView({super.key});

  @override
  ConsumerState<AuthView> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthView> {
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isLogin = true;

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    ref.listen<AsyncValue<void>>(authControllerProvider, (_, state) {
      state.whenOrNull(
        error: (error, _) {
          EzToast.show(
            context: context,
            type: EzToastType.error,
            title: ref.loc.authScreenErrorTitle,
            description: error.toString(),
          );
        },
        data: (_) {
          EzToast.show(
            context: context,
            description: isLogin
                ? ref.loc.authScreenLoginSuccessful
                : ref.loc.authScreenRegistrationSuccessful,
            icon: const Icon(HeroIcon.arrowRight),
          );
        },
      );
    });

    return Scaffold(
      body: EzScaffoldBody(
        child: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                const EzImage(
                  width: 200,
                  height: 300,
                  'assets/images/characters/subscribe_char.png',
                ),
                Wrap(
                  alignment: WrapAlignment.end,
                  children: [
                    _languageButton(ref),
                    _brightnessButton(ref),
                  ],
                ),
                EzHeader.displayMedium(
                  isLogin
                      ? ref.loc.authScreenLogin
                      : ref.loc.authScreenRegister,
                ),
                // Toggle between login and register
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => setState(() => isLogin = !isLogin),
                    child: Text(
                      isLogin
                          ? ref.loc.authScreenToggleRegister
                          : ref.loc.authScreenToggleLogin,
                    ),
                  ),
                ),
                // If in register mode, show first and last name fields
                if (!isLogin) ...[
                  EzFormItemLayout(
                    key: const Key('first_name_field'),
                    itemLabel: ref.loc.authScreenFirstName,
                    child: EzTextFormField(
                      hintText: 'John',
                      controller: firstNameController,
                      // You can add validators here if needed
                    ),
                  ),
                  EzFormItemLayout(
                    key: const Key('last_name_field'),
                    itemLabel: ref.loc.authScreenLastName,
                    child: EzTextFormField(
                      hintText: 'Doe',
                      controller: lastNameController,
                      // You can add validators here if needed
                    ),
                  ),
                ],
                EzFormItemLayout(
                  key: const Key('email_field'),
                  itemLabel: ref.loc.authScreenEmail,
                  child: EzFormEmailField(
                    hintText: 'john.doe@example.com',
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                EzFormItemLayout(
                  key: const Key('password_field'),
                  itemLabel: ref.loc.authScreenPassword,
                  child: EzTextFormField(
                    hintText: '********',
                    obscureText: true,
                    controller: passwordController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ref.loc.authScreenErrorDescription;
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: EzConstLayout.spacerSmall),
                EzButton(
                  isLoading: authState.isLoading,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (isLogin) {
                        // Call login method
                        ref.read(authControllerProvider.notifier).login(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                      } else {
                        // Call register method
                        ref.read(authControllerProvider.notifier).signUp(
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                            );
                      }
                    } else {
                      EzToast.show(
                        context: context,
                        type: EzToastType.error,
                        description: ref.loc.authScreenErrorDescription,
                      );
                    }
                  },
                  text: isLogin
                      ? ref.loc.authScreenLogin
                      : ref.loc.authScreenRegister,
                ),
              ].withSpaceBetween(height: EzConstLayout.spacerSmall),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _languageButton(WidgetRef ref) {
  final locale = ref.watch(getLocaleProvider);
  final isEnglish = locale.toLanguageTag() == 'en';
  final switchToIcon = isEnglish ? EzIcons.flagUs : EzIcons.flagFr;

  return EzButton(
    type: EzButtonType.link,
    text: ref.loc.changeLanguage,
    prefixWidget: SvgPicture.asset(switchToIcon.path),
    onPressed: () async {
      await ref.read(getLocaleProvider.notifier).setLanguageCode(
            isEnglish ? 'fr' : 'en',
          );
    },
  );
}

Widget _brightnessButton(WidgetRef ref) {
  final brightness = ref.watch(userSettingsBrightnessControllerProvider);
  return brightness.when(
    data: (brightness) {
      final brightnessNotifier = ref.read(
        userSettingsBrightnessControllerProvider.notifier,
      );

      var switchToText = ref.loc.switchSystem;
      var switchToIcon = HeroIcon.computerDesktop;

      if (brightness == Brightness.light) {
        switchToText = ref.loc.switchLight;
        switchToIcon = HeroIcon.moon;
      } else if (brightness == Brightness.dark) {
        switchToText = ref.loc.switchDark;
        switchToIcon = HeroIcon.sun;
      }

      return EzButton(
        text: switchToText,
        type: EzButtonType.link,
        prefixWidget: Icon(switchToIcon),
        onPressed: () async {
          if (brightness == Brightness.light) {
            await brightnessNotifier.setBrightness(Brightness.dark);
          } else if (brightness == Brightness.dark) {
            await brightnessNotifier.setBrightness(null);
          } else {
            await brightnessNotifier.setBrightness(Brightness.light);
          }
        },
      );
    },
    error: (error, _) => Text(error.toString()),
    loading: () => EzButton(
      text: '${ref.loc.loading}...',
      prefixWidget: const Icon(HeroIcon.computerDesktop),
      isLoading: true,
      type: EzButtonType.link,
      onPressed: null,
    ),
  );
}
