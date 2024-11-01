import 'package:ez_fit_app/src/features/_core/auth/auth_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_email_field/ez_form_email_field.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_image/ez_image.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider to manage the toggle state between login and register modes
final _isLoginProvider = StateProvider<bool>((ref) => true);

/// Auth view for "/auth" route.
class AuthView extends ConsumerStatefulWidget {
  /// Auth view for "/auth" route.
  const AuthView({super.key});

  @override
  ConsumerState<AuthView> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthView> {
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

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
    // Watch the provider to determine if we are in login or register mode
    final isLogin = ref.watch(_isLoginProvider);
    final authState = ref.watch(authControllerProvider);

    ref.listen<AsyncValue<void>>(authControllerProvider, (_, state) {
      state.whenOrNull(
        error: (error, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $error')),
          );
        },
        data: (_) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                isLogin ? 'Login Successful' : 'Registration Successful',
              ),
            ),
          );
        },
      );
    });

    return Scaffold(
      body: EzScaffoldBody(
        child: Center(
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
                  onPressed: () {
                    // Toggle login/register state
                    ref.read(_isLoginProvider.notifier).state = !isLogin;
                  },
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
                  itemLabel: 'First Name',
                  child: EzTextFormField(
                    hintText: 'First Name',
                    controller: firstNameController,
                  ),
                ),
                EzFormItemLayout(
                  itemLabel: 'Last Name',
                  child: EzTextFormField(
                    hintText: 'Last Name',
                    controller: lastNameController,
                  ),
                ),
              ],
              EzFormItemLayout(
                itemLabel: 'Email',
                child: EzFormEmailField(
                  hintText: 'john.doe@example.com',
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
              EzFormItemLayout(
                itemLabel: 'Password',
                child: EzTextFormField(
                  hintText: '********',
                  obscureText: true,
                  controller: passwordController,
                ),
              ),
              const SizedBox(height: EzConstLayout.spacerSmall),
              if (authState.isLoading)
                const Center(child: CircularProgressIndicator())
              else
                EzButton(
                  onPressed: () {
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
                  },
                  text: isLogin ? 'Login' : 'Register',
                ),
            ].withSpaceBetween(height: EzConstLayout.spacerSmall),
          ),
        ),
      ),
    );
  }
}
