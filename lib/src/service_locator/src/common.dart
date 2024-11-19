part of '../sl.dart';

Future<void> _initCommon() async {
  await dotenv.load(fileName: ".env");

  await _setDeviceOrientation();

  sl.registerSingleton<SharedPreferencesHelper>(
    SharedPreferencesHelper(
      preferences: await SharedPreferences.getInstance(),
    ),
  );


  sl.registerSingleton<Talker>(
    Talker(
      observer: LoggerObserver(),
    ),
  );

  sl.registerSingleton<DioHttpClient>(
    DioHttpClient(),
  );

  sl.registerSingleton<UrlLauncherService>(
    UrlLauncherService(),
  );

  final appInfoServiceInitCompleter = Completer<void>();
  sl.registerSingleton<AppInfoService>(
    AppInfoService(initCompleter: appInfoServiceInitCompleter),
  );
  await appInfoServiceInitCompleter.future;
}

_setDeviceOrientation() async {
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
}
