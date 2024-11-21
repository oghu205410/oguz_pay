import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entity.dart';

part '../../../../generated/src/domain/entity/src/bank_card_entity.g.dart';

@JsonSerializable()
class BankCardEntity extends Equatable {
  final String id;
  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final BankEntity bank;

  final DateTime? createdAt;

  const BankCardEntity({
    required this.id,
    this.cardNumber = '',
    this.expiryDate = '',
    this.cardHolderName = '',
    this.bank = const BankEntity(id: ''),
    this.createdAt,
  });

  factory BankCardEntity.fromJson(Map<String, dynamic> json) => _$BankCardEntityFromJson(json);
  Map<String, dynamic> toJson() => _$BankCardEntityToJson(this);

  @override
  List<Object?> get props => [
        id,
        cardNumber,
        expiryDate,
        cardHolderName,
        bank,
        createdAt,
      ];
}
