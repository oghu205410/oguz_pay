import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../generated/strings.g.dart';

part '../../../../generated/src/domain/entity/src/settings_entity.g.dart';

@JsonSerializable()
class SettingsEntity extends Equatable {
  final ThemeMode themeMode;
  final AppLocale locale;

  const SettingsEntity({
    required this.themeMode,
    required this.locale,
  });

  SettingsEntity copyWith({
    ThemeMode? themeMode,
    AppLocale? locale,
  }) {
    return SettingsEntity(
      themeMode: themeMode ?? this.themeMode,
      locale: locale ?? this.locale,
    );
  }

  factory SettingsEntity.fromJson(Map<String, dynamic> json) => _$SettingsEntityFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsEntityToJson(this);

  @override
  List<Object?> get props => [
        themeMode,
        locale,
      ];
}
