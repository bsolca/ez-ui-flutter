import 'package:flutter/material.dart';
import 'package:impostor/src/features/_core/auth/auth_view.dart';
import 'package:impostor/src/shared/ez_scaffold_body/ez_scaffold_body.dart';

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
