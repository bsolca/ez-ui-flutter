import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impostor/src/features/counter.dart';
import 'package:impostor/src/shared/app_scaffold/app_scaffold.dart';
import 'package:impostor/src/utils/routing/data/location_provider.codegen.dart';
import 'package:impostor/src/utils/routing/presentation/go_route_page_scaffold.dart';
import 'package:impostor/src/utils/routing/presentation/not_found_screen.dart';
import 'package:impostor/src/utils/routing/presentation/unauthorized_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.codegen.g.dart';

/// Routes for the app.
enum AppRoute {
  /// Home route.
  home,
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
          GoRoutePageScaffold(
            path: '/',
            name: 'home',
            parentNavigatorKey: shellNavigatorKey,
            body: const Center(
              child: Text(
                'Route / builder',
                style: TextStyle(fontFamily: 'Inter'),
              ),
            ),
          ),
          GoRoutePageScaffold(
            path: '/settings',
            name: 'settings',
            parentNavigatorKey: shellNavigatorKey,
            body: const Center(
              child: Text('Settings'),
            ),
          ),
          GoRoutePageScaffold(
            path: '/profile',
            name: 'profile',
            parentNavigatorKey: shellNavigatorKey,
            body: const Counter(),
          ),
          GoRoutePageScaffold(
            path: '/users',
            name: 'users',
            parentNavigatorKey: shellNavigatorKey,
            body: const Center(child: Text('Users')),
          ),
          GoRoutePageScaffold(
            path: '/groups',
            name: 'groups',
            parentNavigatorKey: shellNavigatorKey,
            body: const Center(child: Text('Groups')),
          ),
          GoRoutePageScaffold(
            path: '/unauthorized',
            name: 'unauthorized',
            parentNavigatorKey: shellNavigatorKey,
            body: const UnauthorizedScreen(),
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
