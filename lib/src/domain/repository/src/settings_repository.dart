import '../../entity/entity.dart';

abstract interface class SettingsRepository {
  Future<void> saveSettings(SettingsEntity settings);
  Future<SettingsEntity> getSettings();

  Future<SettingsEntity> syncSettings(SettingsEntity settings);
}
