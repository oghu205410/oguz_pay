import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../generated/strings.g.dart';
import '../../../presentation/settings/store/settings_store.dart';
import '../../../service_locator/sl.dart';

part '../../../../generated/src/domain/entity/src/bank_entity.g.dart';

@JsonSerializable()
class BankEntity extends Equatable {
  final String id;

  final String nameRu;
  final String nameTk;
  final String nameEng;

  String get name {
    final locale = sl<SettingsStore>().settings.locale;
    switch (locale) {
      case AppLocale.ru:
        return nameRu;
      case AppLocale.tk:
        return nameTk;
      case AppLocale.en:
        return nameEng;
      default:
        return nameEng;
    }
  }

  final String terminalIdentifier;

  final String imagePath;
  final String imageUrl;

  const BankEntity({
    required this.id,
    this.nameRu = '',
    this.nameTk = '',
    this.nameEng = '',
    this.terminalIdentifier = '',
    this.imagePath = '',
    this.imageUrl = '',
  });

  factory BankEntity.fromJson(Map<String, dynamic> json) => _$BankEntityFromJson(json);
  Map<String, dynamic> toJson() => _$BankEntityToJson(this);

  @override
  List<Object?> get props => [
        id,
        nameRu,
        nameTk,
        nameEng,
        imagePath,
        imageUrl,
        terminalIdentifier,
      ];
}
