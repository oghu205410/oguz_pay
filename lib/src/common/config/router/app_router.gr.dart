// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:oguz_pay/src/domain/enum/enum.dart' as _i12;
import 'package:oguz_pay/src/presentation/bank_card/bank_cards_screen.dart'
    as _i1;
import 'package:oguz_pay/src/presentation/home/home_dashboard_screen.dart'
    as _i2;
import 'package:oguz_pay/src/presentation/home/home_screen.dart' as _i3;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_business_screen.dart'
    as _i5;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_individual_screen.dart'
    as _i6;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_screen.dart'
    as _i7;
import 'package:oguz_pay/src/presentation/settings/settings_screen.dart' as _i8;
import 'package:oguz_pay/src/presentation/transaction/transaction_history_screen.dart'
    as _i9;
import 'package:oguz_pay/src/presentation/user/login_screen.dart' as _i4;

/// generated route for
/// [_i1.BankCardsScreen]
class BankCardsRoute extends _i10.PageRouteInfo<void> {
  const BankCardsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BankCardsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BankCardsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.BankCardsScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeDashboardScreen]
class HomeDashboardRoute extends _i10.PageRouteInfo<void> {
  const HomeDashboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDashboardRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeDashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i11.Key? key,
    required _i12.UserTypeEnum userTypeEnum,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            userTypeEnum: userTypeEnum,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i4.LoginScreen(
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

  final _i11.Key? key;

  final _i12.UserTypeEnum userTypeEnum;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, userTypeEnum: $userTypeEnum}';
  }
}

/// generated route for
/// [_i5.OnboardingBusinessScreen]
class OnboardingBusinessRoute
    extends _i10.PageRouteInfo<OnboardingBusinessRouteArgs> {
  OnboardingBusinessRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          OnboardingBusinessRoute.name,
          args: OnboardingBusinessRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingBusinessRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingBusinessRouteArgs>(
          orElse: () => const OnboardingBusinessRouteArgs());
      return _i5.OnboardingBusinessScreen(key: args.key);
    },
  );
}

class OnboardingBusinessRouteArgs {
  const OnboardingBusinessRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'OnboardingBusinessRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.OnboardingIndividualScreen]
class OnboardingIndividualRoute
    extends _i10.PageRouteInfo<OnboardingIndividualRouteArgs> {
  OnboardingIndividualRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          OnboardingIndividualRoute.name,
          args: OnboardingIndividualRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingIndividualRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingIndividualRouteArgs>(
          orElse: () => const OnboardingIndividualRouteArgs());
      return _i6.OnboardingIndividualScreen(key: args.key);
    },
  );
}

class OnboardingIndividualRouteArgs {
  const OnboardingIndividualRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'OnboardingIndividualRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.OnboardingScreen]
class OnboardingRoute extends _i10.PageRouteInfo<void> {
  const OnboardingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i8.SettingsScreen]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i9.TransactionHistoryScreen]
class TransactionHistoryRoute extends _i10.PageRouteInfo<void> {
  const TransactionHistoryRoute({List<_i10.PageRouteInfo>? children})
      : super(
          TransactionHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionHistoryRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.TransactionHistoryScreen();
    },
  );
}
