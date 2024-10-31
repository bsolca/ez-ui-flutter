import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// User screen for "/users/:id" route.
class UserScreen extends ConsumerWidget {
  /// User screen for "/users/:id" route.
  const UserScreen({super.key, required this.id});

  /// The user to display.
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EzScaffoldBody(
      child: Column(
        children: [
          EzHeader.displayMedium(
            id == 'new' ? 'Create new user' : "Profile of id '$id'",
          ),
        ],
      ),
    );
  }
}
