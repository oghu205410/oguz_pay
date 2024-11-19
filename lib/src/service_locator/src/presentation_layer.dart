part of '../sl.dart';

Future<void> _initPresentationLayer() async {
  // final settingsStoreCompleter = Completer<void>();
  // sl.registerSingleton(
  //   SettingsStore(
  //     settingsRepository: sl<SettingsRepository>(),
  //     initCompleter: settingsStoreCompleter,
  //   ),
  // );
  // await settingsStoreCompleter.future;

  // final userRepositoryCompleter = Completer<void>();
  // sl.registerSingleton(
  //   UserStore(
  //     userRepository: sl<UserRepository>(),
  //     initCompleter: userRepositoryCompleter,
  //   ),
  // );
  // await userRepositoryCompleter.future;

  sl.registerSingleton<AppRouter>(
    AppRouter(
      // isLoggedIn: sl<UserStore>().isLoggedIn,
      isLoggedIn: false,
    ),
  );
}

Future<void> initAuthorizedStores() async {
  sl.pushNewScope(scopeName: kAuthorizedUserScope);
}
