// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:oguz_pay/src/presentation/home/home_screen.dart' as _i1;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_screen.dart'
    as _i3;
import 'package:oguz_pay/src/presentation/settings/settings_screen.dart' as _i4;
import 'package:oguz_pay/src/presentation/user/login_screen.dart' as _i2;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.OnboardingScreen]
class OnboardingRoute extends _i5.PageRouteInfo<void> {
  const OnboardingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SettingsScreen();
    },
  );
}
