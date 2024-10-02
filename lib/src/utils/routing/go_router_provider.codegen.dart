import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impostor/src/features/counter.dart';
import 'package:impostor/src/shared/app_scaffold/app_scaffold.dart';
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
// Remove the sidebarKey
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
        pageBuilder: (context, state, child) {
          // ShellRoute should ideally build the shell only once
          return NoTransitionPage(
            key: state.pageKey,
            child: AppScaffold(
              body: child,
            ),
          );
        },
        routes: [
          GoRoute(
            path: '/',
            name: AppRoute.home.name,
            pageBuilder: (_, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const Center(
                  child: Text(
                    'Route / builder',
                    style: TextStyle(fontFamily: 'Inter'),
                  ),
                ),
              );
            },
          ),
          GoRoute(
            path: '/settings',
            name: 'settings',
            pageBuilder: (_, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const Center(child: Text('Settings')),
              );
            },
          ),
          GoRoute(
            path: '/profile',
            name: 'profile',
            pageBuilder: (_, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const Counter(),
              );
            },
          ),
          GoRoute(
            path: '/users',
            name: 'users',
            pageBuilder: (_, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const Center(child: Text('Users')),
              );
            },
          ),
          GoRoute(
            path: '/groups',
            name: 'groups',
            pageBuilder: (_, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const Center(child: Text('Groups')),
              );
            },
          ),
          GoRoute(
            path: '/unauthorized',
            name: 'unauthorized',
            pageBuilder: (_, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const UnauthorizedScreen(),
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
