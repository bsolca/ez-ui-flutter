import 'package:ez_fit_app/src/features/_core/auth/auth_view.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:flutter/material.dart';

/// Auth screen for "/auth" route.
class AuthScreen extends StatelessWidget {
  /// Auth screen for "/auth" route.
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EzScaffoldBody(child: AuthView()),
    );
  }
}
