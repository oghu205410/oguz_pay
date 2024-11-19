import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';

import '../../generated/strings.g.dart';
import '../common/config/router/app_router.dart';
import '../common/config/theme/theme.dart';
import '../common/widget/space.dart';
import '../service_locator/sl.dart';
import 'settings/store/settings_store.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Locale
      locale: sl<SettingsStore>().settings.locale.flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        ...TkDelegates.delegates,
      ],

      // Theme mode
      themeMode: sl<SettingsStore>().settings.themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      // App router
      routerConfig: sl<AppRouter>().config(),

      // Remove debug mode banner
      debugShowCheckedModeBanner: false,

      // Ensure consistent font sizes across platforms by disabling system font scaling.
      builder: (context, child) {
        final isDarkMode = sl<SettingsStore>().settings.themeMode == ThemeMode.dark;

        return AnnotatedRegion(
          value: SystemUiOverlayStyle(
            // For Android.
            // Use [light] for white status bar and [dark] for black status bar.
            statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
            // For iOS.
            // Use [dark] for white status bar and [light] for black status bar.
            statusBarBrightness: isDarkMode ? Brightness.dark : Brightness.light,
          ),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1.0),
            ),
            child: child ?? Space.empty,
          ),
        );
      },
    );
  }
}
