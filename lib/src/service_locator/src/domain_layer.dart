part of '../sl.dart';

Future<void> _initDomainLayer() async {
  sl.registerSingleton<SettingsRepository>(
    SettingsRepositoryImpl(
      preferencesHelper: sl<SharedPreferencesHelper>(),
    ),
  );
}
