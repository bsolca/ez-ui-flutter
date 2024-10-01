
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impostor/src/shared/app_scaffold/app_scaffold.dart';
import 'package:impostor/src/shared/ez_sidebar_layout/ez_sidebar_layout.dart';
import 'package:impostor/src/utils/routing/data/location_provider.codegen.dart';
import 'package:impostor/src/utils/routing/presentation/not_found_screen.dart';
import 'package:impostor/src/utils/routing/presentation/unauthorized_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.codegen.g.dart';

/// Routes for the app.
enum AppRoute {
  /// Home route.
  home,

  /// Games box route.
  gamesBox,

  /// Lobby screen route.
  lobby
}

/// Provider for [GoRouter].
@riverpod
Raw<GoRouter> goRouter(GoRouterRef ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final shellNavigatorKey = GlobalKey<NavigatorState>();

  final goRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    redirect: (context, state) async {
      return null;
    },
    routes: [
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        pageBuilder: (_, state, child) {
          return NoTransitionPage(
            key: state.pageKey,
            child: AppScaffold(body: child),
          );
        },
        routes: [
          GoRoute(
            path: '/',
            name: AppRoute.home.name,
            builder: (_, state_) {
              // font family Inter
              return const Center(
                child: Text('Homew', style: TextStyle(fontFamily: 'Inter')),
              );
            },
            pageBuilder: (_, state) {
              return const MaterialPage(
                child: EzSidebarLayout(
                  headerText: 'Hello',
                ),
              );
            },
          ),
          // Unauthorized route
          GoRoute(
            path: '/unauthorized',
            name: 'unauthorized',
            pageBuilder: (_, state) {
              return const MaterialPage(
                child: UnauthorizedScreen(),
              );
            },
          ),
        ],
      ),
    ],
    errorBuilder: (_, __) => const NotFoundScreen(),
  );

  goRouter.routerDelegate.addListener(() {
    final loc = goRouter.routerDelegate.currentConfiguration.uri.toString();
    ref.read(locationRepositoryProvider.notifier).set(loc);
    debugPrint('Location changed: $loc');
  });

  return goRouter;
}
