import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'generated/strings.g.dart';
import 'src/common/utils/logger/logger.dart';
import 'src/data/data_sources/http/http_overrides.dart';
import 'src/presentation/application.dart';
import 'src/service_locator/sl.dart';

void main() async => runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        HttpOverrides.global = MyHttpOverrides();
        FlutterError.onError = Logger.logFlutterError;
        PlatformDispatcher.instance.onError = Logger.logPlatformDispatcherError;
        initializeDateFormatting();

        await initServiceLocator();

        runApp(
          TranslationProvider(
            child: const Application(),
          ),
        );
      },
      Logger.logZoneError,
    );
