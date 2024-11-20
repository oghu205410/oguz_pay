// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:oguz_pay/src/domain/enum/enum.dart' as _i9;
import 'package:oguz_pay/src/presentation/home/home_screen.dart' as _i1;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_business_screen.dart'
    as _i3;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_individual_screen.dart'
    as _i4;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_screen.dart'
    as _i5;
import 'package:oguz_pay/src/presentation/settings/settings_screen.dart' as _i6;
import 'package:oguz_pay/src/presentation/user/login_screen.dart' as _i2;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    required _i9.UserTypeEnum userTypeEnum,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            userTypeEnum: userTypeEnum,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i2.LoginScreen(
        key: args.key,
        userTypeEnum: args.userTypeEnum,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.userTypeEnum,
  });

  final _i8.Key? key;

  final _i9.UserTypeEnum userTypeEnum;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, userTypeEnum: $userTypeEnum}';
  }
}

/// generated route for
/// [_i3.OnboardingBusinessScreen]
class OnboardingBusinessRoute
    extends _i7.PageRouteInfo<OnboardingBusinessRouteArgs> {
  OnboardingBusinessRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          OnboardingBusinessRoute.name,
          args: OnboardingBusinessRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingBusinessRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingBusinessRouteArgs>(
          orElse: () => const OnboardingBusinessRouteArgs());
      return _i3.OnboardingBusinessScreen(key: args.key);
    },
  );
}

class OnboardingBusinessRouteArgs {
  const OnboardingBusinessRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'OnboardingBusinessRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OnboardingIndividualScreen]
class OnboardingIndividualRoute
    extends _i7.PageRouteInfo<OnboardingIndividualRouteArgs> {
  OnboardingIndividualRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          OnboardingIndividualRoute.name,
          args: OnboardingIndividualRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingIndividualRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingIndividualRouteArgs>(
          orElse: () => const OnboardingIndividualRouteArgs());
      return _i4.OnboardingIndividualScreen(key: args.key);
    },
  );
}

class OnboardingIndividualRouteArgs {
  const OnboardingIndividualRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'OnboardingIndividualRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.OnboardingScreen]
class OnboardingRoute extends _i7.PageRouteInfo<void> {
  const OnboardingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SettingsScreen();
    },
  );
}
