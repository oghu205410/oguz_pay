import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

import '../../../../generated/strings.g.dart';
import '../../../common/utils/logger/logger.dart';
import '../../../domain/entity/entity.dart';
import '../../../domain/repository/src/settings_repository.dart';

part '../../../../generated/src/presentation/settings/store/settings_store.g.dart';

class SettingsStore = _SettingsStoreBase with _$SettingsStore;

abstract class _SettingsStoreBase with Store {
  final SettingsRepository _settingsRepository;
  final Completer<void> _initCompleter;

  _SettingsStoreBase({
    required SettingsRepository settingsRepository,
    required Completer<void> initCompleter,
  })  : _settingsRepository = settingsRepository,
        _initCompleter = initCompleter {
    _init();
  }

  @observable
  late SettingsEntity settings;

  _init() async {
    settings = await _settingsRepository.getSettings();

    // Set up locale-related functionality
    LocaleSettings.getLocaleStream().listen(
      (event) {
        Intl.defaultLocale = event.flutterLocale.toLanguageTag();
      },
    );

    LocaleSettings.setLocale(settings.locale);

    _initCompleter.complete();

    syncSettings();
  }

  @action
  Future<void> updateThemeMode(ThemeMode themeMode) async {
    settings = settings.copyWith(themeMode: themeMode);
    await _settingsRepository.saveSettings(settings);
  }

  @action
  Future<void> updateLocale(AppLocale? locale) async {
    if (locale == null) return;

    settings = settings.copyWith(locale: locale);
    LocaleSettings.setLocale(locale);

    await _settingsRepository.saveSettings(settings);
  }

  @action
  Future<void> syncSettings() async {
    try {
      final remoteSettings = await _settingsRepository.syncSettings(settings);

      settings = remoteSettings;
    } catch (error, stackTrace) {
      Logger.e(error, stackTrace);
    }
  }
}
