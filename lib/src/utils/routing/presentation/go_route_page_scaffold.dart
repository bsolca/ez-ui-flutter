import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A custom `GoRoute` class that provides a consistent page structure.
///
/// This class uses a `NoTransitionPage` with a `Scaffold` to reduce redundancy
/// when creating routes that need a `Scaffold` with common properties, such as
/// a transparent background and a simple body widget.
class GoRoutePageScaffold extends GoRoute {
  /// Constructs a `GoRoutePageScaffold`.
  GoRoutePageScaffold({
    required super.path,
    required String super.name,
    required super.parentNavigatorKey,
    required Widget body,
  }) : super(
    pageBuilder: (_, state) {
      return NoTransitionPage(
        key: state.pageKey,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: body,
        ),
      );
    },
  );
}