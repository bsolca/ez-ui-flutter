import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/features/user_settings/ui/controller/user_settings_brightness_controller.codegen.dart';
import 'package:impostor/src/utils/constants/ez_const_string.dart';
import 'package:impostor/src/utils/extension/type_extension.dart';
import 'package:impostor/src/utils/localization/get_locale.codegen.dart';
import 'package:impostor/src/utils/responsive/presentation/responsive_builder.dart';
import 'package:impostor/src/utils/routing/go_router_provider.codegen.dart';

/// App starting point.
class App extends ConsumerWidget {
  /// App starting point.
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(userSettingsBrightnessControllerProvider).when(
          data: (brightness) => ResponsiveBuilder(
            widgetRef: ref,
            child: MaterialApp.router(
              restorationScopeId: EzConstString.mainRestorationId,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.deepPurple,
                  brightness: brightness ??
                      PlatformDispatcher.instance.platformBrightness,
                ),
                fontFamily: 'Inter',
              ),
              onGenerateTitle: (BuildContext context) => 'impostor'.hardcoded,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              localeResolutionCallback: (
                deviceLocale,
                supportedLocales,
              ) {
                return ref
                    .read(getLocaleProvider.notifier)
                    .localeResolutionCallback(deviceLocale, supportedLocales);
              },
              routerConfig: ref.watch(goRouterProvider),
            ),
          ),
          error: (error, stackTrace) {
            throw Exception('Error while loading user settings. $error');
          },
          loading: () => const CircularProgressIndicator(),
        );
  }
}
