import 'package:ez_fit_app/src/features/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

/// Scaffold widget for the app.
class EzAppScaffold extends StatelessWidget {
  /// Scaffold widget for the app.
  const EzAppScaffold({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.body,
  });

  final String firstName;
  final String lastName;
  final String email;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Sidebar(
        firstName: firstName,
        lastName: lastName,
        email: email,
        child: body,
      ),
    );
  }
}
