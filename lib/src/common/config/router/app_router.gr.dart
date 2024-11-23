// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:oguz_pay/src/presentation/bank_card/bank_cards_screen.dart'
    as _i1;
import 'package:oguz_pay/src/presentation/home/home_dashboard_screen.dart'
    as _i2;
import 'package:oguz_pay/src/presentation/home/home_screen.dart' as _i3;
import 'package:oguz_pay/src/presentation/news/news_screen.dart' as _i5;
import 'package:oguz_pay/src/presentation/onboarding/onboarding_screen.dart'
    as _i6;
import 'package:oguz_pay/src/presentation/payment/payment_incoming_screen.dart'
    as _i7;
import 'package:oguz_pay/src/presentation/payment/payment_qr_scanner_screen.dart'
    as _i8;
import 'package:oguz_pay/src/presentation/settings/settings_screen.dart' as _i9;
import 'package:oguz_pay/src/presentation/transaction_history/transaction_history_screen.dart'
    as _i10;
import 'package:oguz_pay/src/presentation/user/login_screen.dart' as _i4;

/// generated route for
/// [_i1.BankCardsScreen]
class BankCardsRoute extends _i11.PageRouteInfo<void> {
  const BankCardsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BankCardsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BankCardsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.BankCardsScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeDashboardScreen]
class HomeDashboardRoute extends _i11.PageRouteInfo<void> {
  const HomeDashboardRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDashboardRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeDashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.NewsScreen]
class NewsRoute extends _i11.PageRouteInfo<void> {
  const NewsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.NewsScreen();
    },
  );
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingRoute extends _i11.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return _i6.OnboardingScreen(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.PaymentIncomingScreen]
class PaymentIncomingRoute extends _i11.PageRouteInfo<void> {
  const PaymentIncomingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PaymentIncomingRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentIncomingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.PaymentIncomingScreen();
    },
  );
}

/// generated route for
/// [_i8.PaymentQrScannerScreen]
class PaymentQrScannerRoute extends _i11.PageRouteInfo<void> {
  const PaymentQrScannerRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PaymentQrScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentQrScannerRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.PaymentQrScannerScreen();
    },
  );
}

/// generated route for
/// [_i9.SettingsScreen]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i10.TransactionHistoryScreen]
class TransactionHistoryRoute extends _i11.PageRouteInfo<void> {
  const TransactionHistoryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TransactionHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionHistoryRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.TransactionHistoryScreen();
    },
  );
}
