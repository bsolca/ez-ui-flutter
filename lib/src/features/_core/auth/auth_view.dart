import 'package:ez_fit_app/src/features/_core/auth/auth_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_email_field/ez_form_email_field.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_icon/hero_icon_icons.dart';
import 'package:ez_fit_app/src/shared/ez_image/ez_image.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/ez_toast/ez_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            title: 'Error',
            description: error.toString(),
            icon: const Icon(HeroIcon.arrowRight),
          );
        },
        data: (_) {
          EzToast.show(
            context: context,
            title: 'Error',
            description:
                isLogin ? 'Login Successful' : 'Registration Successful',
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
                EzHeader.displayMedium(
                  isLogin ? 'Login' : 'Register',
                ),
                // Toggle between login and register
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => setState(() => isLogin = !isLogin),
                    child: Text(
                      isLogin
                          ? "Don't have an account? Register"
                          : 'Already have an account? Login',
                    ),
                  ),
                ),
                // If in register mode, show first and last name fields
                if (!isLogin) ...[
                  EzFormItemLayout(
                    key: const Key('first_name_field'),
                    itemLabel: 'First Name',
                    child: EzTextFormField(
                      hintText: 'First Name',
                      controller: firstNameController,
                      // You can add validators here if needed
                    ),
                  ),
                  EzFormItemLayout(
                    key: const Key('last_name_field'),
                    itemLabel: 'Last Name',
                    child: EzTextFormField(
                      hintText: 'Last Name',
                      controller: lastNameController,
                      // You can add validators here if needed
                    ),
                  ),
                ],
                EzFormItemLayout(
                  key: const Key('email_field'),
                  itemLabel: 'Email',
                  child: EzFormEmailField(
                    hintText: 'john.doe@example.com',
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                EzFormItemLayout(
                  key: const Key('password_field'),
                  itemLabel: 'Password',
                  child: EzTextFormField(
                    hintText: '********',
                    obscureText: true,
                    controller: passwordController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: EzConstLayout.spacerSmall),
                if (authState.isLoading)
                  const Center(child: CircularProgressIndicator())
                else
                  EzButton(
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
                          description: 'Please fill all required fields.',
                        );
                      }
                    },
                    text: isLogin ? 'Login' : 'Register',
                  ),
              ].withSpaceBetween(height: EzConstLayout.spacerSmall),
            ),
          ),
        ),
      ),
    );
  }
}
