import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../generated/strings.g.dart';
import '../../../domain/entity/entity.dart';
import '../../../domain/repository/repository.dart';
import '../../data_sources/shared_preferences/shared_preferences_helper.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SharedPreferencesHelper _preferencesHelper;

  SettingsRepositoryImpl({
    required SharedPreferencesHelper preferencesHelper,
  }) : _preferencesHelper = preferencesHelper;

  @override
  Future<SettingsEntity> getSettings() async {
    final jsonString = _preferencesHelper.getSettings();

    if (jsonString == null) {
      return SettingsEntity(
        themeMode: ThemeMode.light,
        locale: AppLocale.ru,
      );
    }

    return SettingsEntity.fromJson(json.decode(jsonString));
  }

  @override
  Future<void> saveSettings(SettingsEntity settings) async {
    final jsonString = json.encode(settings.toJson());

    await _preferencesHelper.setSettings(jsonString);
  }
}
