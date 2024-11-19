import 'dart:async';
import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

class AppInfoService {
  final Completer<void> _initCompleter;

  AppInfoService({
    required Completer<void> initCompleter,
  }) : _initCompleter = initCompleter {
    _init();
  }

  _init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    applicationDocumentsDirectory = await getApplicationDocumentsDirectory();

    appName = packageInfo.appName;
    packageName = packageInfo.packageName;
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;

    _initCompleter.complete();
  }

  late final String appName;
  late final String packageName;
  late final String version;
  late final String buildNumber;
  late final Directory applicationDocumentsDirectory;
}
