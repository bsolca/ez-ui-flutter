import 'package:ez_fit_app/src/features/_core/auth/service/auth_service.codegen.dart';
import 'package:ez_fit_app/src/features/sidebar/sidebar_item_brightness.dart';
import 'package:ez_fit_app/src/features/sidebar/sidebar_item_language.dart';
import 'package:ez_fit_app/src/shared/ez_icon/hero_icon_icons.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_footer_data.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_header_data.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_item_data.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_popover_item_data.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_sidebar_layout/ez_sidebar_layout.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:ez_fit_app/src/utils/log/logger.dart';
import 'package:ez_fit_app/src/utils/routing/go_router_provider.codegen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Sidebar widget of the dashboard app.
@immutable
class Sidebar extends ConsumerWidget {
  /// Creates the sidebar widget of the dashboard app.
  const Sidebar({
    super.key,
    required this.lastName,
    required this.firstName,
    required this.email,
    required this.child,
  });

  final Widget child;
  final String lastName;
  final String firstName;
  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EzSidebarLayout(
      // key: sidebarKey, // Removed
      headerData: const EzSidebarHeaderData(
        appName: 'Ez Dashboard',
        avatarUrl: null,
        items: [
          // EzSidebarPopoverItemData.regular(
          //   text: 'Settings',
          //   icon: HeroIcon.cog8Tooth,
          //   onTap: () => print('Settings Tapped'),
          // ),
        ],
      ),
      footerData: EzSidebarFooterData(
        name: '$firstName $lastName',
        email: email,
        avatarUrl: null,
        items: [
          EzSidebarPopoverItemData.regular(
            text: 'Work in progress message too long',
            icon: HeroIcon.cog8Tooth,
            onTap: () => logInfo('Work in progress'),
          ),
          const EzSidebarPopoverItemData.separator(),
          EzSidebarPopoverItemData.regular(
            text: 'Logout',
            icon: HeroIcon.arrowRightStartOnRectangle,
            onTap: ref.read(authServiceProvider).logout,
          ),
        ],
      ),
      items: [
        // Make items const if possible
        EzSidebarItemData.regular(
          text: ref.loc.home,
          icon: HeroIcon.home,
          onTap: () => context.go('/'),
        ),
        EzSidebarItemData.regular(
          text: ref.loc.settingScreenSettings,
          icon: HeroIcon.adjustmentsHorizontal,
          onTap: () => context.goNamed(AppRoute.settingsUserProfile.name),
        ),
        EzSidebarItemData.regular(
          text: ref.loc.profile,
          icon: HeroIcon.userCircle,
          onTap: () => context.goNamed(AppRoute.settingsUserProfile.name),
        ),
        // Add heading
        EzSidebarItemData.heading(text: ref.loc.users),
        EzSidebarItemData.regular(
          text: ref.loc.users,
          icon: HeroIcon.users,
          onTap: () => context.goNamed(AppRoute.usersUsers.name),
        ),
        // add groups
        EzSidebarItemData.regular(
          text: ref.loc.groups,
          icon: HeroIcon.userGroup,
          onTap: () => context.goNamed(AppRoute.usersGroups.name),
        ),
        EzSidebarItemData.heading(text: ref.loc.library),
        EzSidebarItemData.regular(
          text: ref.loc.exercises,
          icon: Icons.fitness_center_outlined,
          onTap: () => context.goNamed(AppRoute.exercises.name),
        ),
        const EzSidebarItemData.heading(text: 'Tools'),
        EzSidebarItemData.regular(
          text: 'Color Scheme Preview',
          icon: HeroIcon.userGroup,
          onTap: () => context.goNamed(AppRoute.colorSchemePreview.name),
        ),
        SidebarItemLanguage.build(ref),
        SidebarItemBrightness.build(ref),
      ],
      content: child,
    );
  }
}
