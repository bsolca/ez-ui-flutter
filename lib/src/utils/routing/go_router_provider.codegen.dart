import 'package:ez_fit_app/src/features/_core/auth_state/auth_state.codegen.dart';
import 'package:ez_fit_app/src/features/_core/loading/loading_controller.codegen.dart';
import 'package:ez_fit_app/src/features/color_scheme_preview/color_scheme_preview.dart';
import 'package:ez_fit_app/src/features/user_settings/ui/user_settings_screen.dart';
import 'package:ez_fit_app/src/screens/auth_screen/auth_screen.dart';
import 'package:ez_fit_app/src/screens/exercise_screen/exercise_screen.dart';
import 'package:ez_fit_app/src/screens/exercises_screen/exercises_screen.dart';
import 'package:ez_fit_app/src/screens/home_screen/home_screen.dart';
import 'package:ez_fit_app/src/screens/user_screen/user_screen.dart';
import 'package:ez_fit_app/src/screens/users_screen/users_screen.dart';
import 'package:ez_fit_app/src/screens/workout/workout_screen.dart';
import 'package:ez_fit_app/src/screens/workouts_screen/workouts_screen.dart';
import 'package:ez_fit_app/src/shared/ez_app_scaffold/ez_app_scaffold.dart';
import 'package:ez_fit_app/src/shared/ez_divider/ez_divider.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:ez_fit_app/src/shared/ez_wrap_menu/data/ez_wrapper_tiem.dart';
import 'package:ez_fit_app/src/shared/ez_wrap_menu/ez_wrap_menu.dart';
import 'package:ez_fit_app/src/utils/log/logger.dart';
import 'package:ez_fit_app/src/utils/routing/data/location_provider.codegen.dart';
import 'package:ez_fit_app/src/utils/routing/presentation/go_route_page_scaffold.dart';
import 'package:ez_fit_app/src/utils/routing/presentation/not_found_screen.dart';
import 'package:ez_fit_app/src/utils/routing/presentation/unauthorized_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.codegen.g.dart';

enum AppRoute {
  auth,
  colorSchemePreview,
  exercise,
  exercises,
  home,
  settingsNotifications,
  settingsPlanAndBilling,
  settingsPreferences,
  settingsUserProfile,
  todo,
  unauthorized,
  usersGroups,
  usersUser,
  usersUsers,
  workout,
  workouts,
}

/// Provider for [GoRouter].
@riverpod
Raw<GoRouter> goRouter(Ref ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final shellNavigatorKey = GlobalKey<NavigatorState>();
  final shellSettingsKey = GlobalKey<NavigatorState>();
  final authState = ref.watch(authStateProvider);

  final goRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    redirect: (context, state) async {
      return null;
    },
    routes: [
      GoRoutePageScaffold(
        path: '/auth',
        name: AppRoute.auth.name,
        parentNavigatorKey: rootNavigatorKey,
        body: const AuthScreen(),
      ),
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        pageBuilder: (context, state, child) {
          // ShellRoute should ideally build the shell only once
          return NoTransitionPage(
            key: state.pageKey,
            // NOTE: We are using dummy content for the user.
            child: EzAppScaffold(
              firstName: 'Benjamin',
              lastName: 'S.',
              email: 'benjamin@fitapp.x',
              body: child,
            ),
          );
        },
        redirect: (context, state) {
          // While the auth state is loading, return null (no redirection)
          if (authState.isLoading) return null;
          ref.read(loadingControllerProvider.notifier).stopLoading();

          // Check if the user is logged in
          final isLoggedIn = authState.value ?? false;
          final isGoingToAuth = state.uri.toString() == '/auth';

          // Redirect to /auth if not logged in and not already there
          if (!isLoggedIn && !isGoingToAuth) {
            return '/auth';
          }

          // Redirect to home if trying to access /auth when already logged in
          if (isLoggedIn && isGoingToAuth) {
            return '/';
          }

          // No redirect
          return null;
        },
        routes: [
          GoRoutePageScaffold(
            path: '/',
            name: AppRoute.home.name,
            parentNavigatorKey: shellNavigatorKey,
            body: const HomeScreen(),
          ),
          GoRoute(
            path: '/settings',
            redirect: (context, state) {
              if (state.fullPath == '/settings') {
                logError('Redirecting to /settings/profile');
                return '/settings/profile';
              }
              return null;
            },
            routes: [
              ShellRoute(
                navigatorKey: shellSettingsKey,
                pageBuilder: (ctx, state, child) {
                  // ShellRoute should ideally build the shell only once
                  return NoTransitionPage(
                    key: state.pageKey,
                    child: EzScaffoldBody(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Builder(
                              builder: (c) {
                                final ezWrapMenuItems = <EzWrapMenuItem>[
                                  EzWrapMenuItem(
                                    text: 'Profile',
                                    onPressed: () => c.goNamed(
                                      AppRoute.settingsUserProfile.name,
                                    ),
                                  ),
                                  EzWrapMenuItem(
                                    text: 'Notifications',
                                    onPressed: () => c.goNamed(
                                      AppRoute.settingsNotifications.name,
                                    ),
                                  ),
                                  EzWrapMenuItem(
                                    text: 'Preferences',
                                    onPressed: () => c.goNamed(
                                      AppRoute.settingsPreferences.name,
                                    ),
                                  ),
                                  EzWrapMenuItem(
                                    text: 'Plan & Billing',
                                    onPressed: () => c.goNamed(
                                      AppRoute.settingsPlanAndBilling.name,
                                    ),
                                  ),
                                ];

                                return EzWrapMenu(
                                  items: ezWrapMenuItems,
                                  initialSelectedItem: 0,
                                );
                              },
                            ),
                          ),
                          const EzDivider(),
                          Expanded(child: child),
                        ],
                      ),
                    ),
                  );
                },
                routes: [
                  GoRoutePageScaffold(
                    path: 'profile',
                    name: AppRoute.settingsUserProfile.name,
                    parentNavigatorKey: shellSettingsKey,
                    body: const UserSettingsScreen(),
                  ),
                  GoRoutePageScaffold(
                    path: 'notifications',
                    name: AppRoute.settingsNotifications.name,
                    parentNavigatorKey: shellSettingsKey,
                    body: const Center(child: Text('Settings Notifications')),
                  ),
                  GoRoutePageScaffold(
                    path: 'preferences',
                    name: AppRoute.settingsPreferences.name,
                    parentNavigatorKey: shellSettingsKey,
                    body: const Center(child: Text('Settings Preferences')),
                  ),
                  GoRoutePageScaffold(
                    path: 'plan_and_billing',
                    name: AppRoute.settingsPlanAndBilling.name,
                    parentNavigatorKey: shellSettingsKey,
                    body: const Center(child: Text('Settings Plan & Billing')),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '/users',
            name: AppRoute.usersUsers.name,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: ValueKey(AppRoute.usersUsers.name),
                child: const UsersScreen(),
              );
            },
          ),
          GoRoute(
            path: '/users/:id',
            name: AppRoute.usersUser.name,
            pageBuilder: (context, state) {
              final id = state.pathParameters['id'];
              return NoTransitionPage(
                key: ValueKey('${AppRoute.usersUsers.name}/$id'),
                child: UserScreen(id: id ?? 'new'),
              );
            },
          ),
          GoRoutePageScaffold(
            path: '/groups',
            name: AppRoute.usersGroups.name,
            parentNavigatorKey: shellNavigatorKey,
            body: const Center(child: Text('Groups')),
          ),
          GoRoutePageScaffold(
            path: '/exercises',
            name: AppRoute.exercises.name,
            parentNavigatorKey: shellNavigatorKey,
            body: const ExercisesScreen(),
          ),
          GoRoute(
            path: '/exercises/:id',
            name: AppRoute.exercise.name,
            pageBuilder: (context, state) {
              final id = state.pathParameters['id'];
              return NoTransitionPage(
                key: ValueKey('${AppRoute.usersUsers.name}/$id'),
                child: ExerciseScreen(exerciseId: id ?? ''),
              );
            },
          ),
          GoRoutePageScaffold(
            path: '/workouts',
            name: AppRoute.workouts.name,
            parentNavigatorKey: shellNavigatorKey,
            body: const WorkoutsScreen(),
          ),
          // workout with id
          GoRoute(
            path: '/workouts/:id',
            name: AppRoute.workout.name,
            pageBuilder: (context, state) {
              final id = state.pathParameters['id'];
              return NoTransitionPage(
                key: ValueKey('${AppRoute.workouts.name}/$id'),
                child: WorkoutScreen(workoutId: id ?? ''),
              );
            },
          ),
          // ColorSchemePreview
          GoRoutePageScaffold(
            path: '/color_scheme_preview',
            name: AppRoute.colorSchemePreview.name,
            parentNavigatorKey: shellNavigatorKey,
            body: const ColorSchemePreview(),
          ),
          GoRoutePageScaffold(
            path: '/unauthorized',
            name: AppRoute.unauthorized.name,
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
