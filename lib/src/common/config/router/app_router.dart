import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final bool isLoggedIn;

  AppRouter({
    super.navigatorKey,
    required this.isLoggedIn,
  });

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: SettingsRoute.page,
        ),
      ];
}
