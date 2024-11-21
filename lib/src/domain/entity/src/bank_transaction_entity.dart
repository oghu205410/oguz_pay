import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enum/enum.dart';
import '../entity.dart';

part '../../../../generated/src/domain/entity/src/bank_transaction_entity.g.dart';

@JsonSerializable()
class BankTransactionEntity extends Equatable {
  final String id;
  final DateTime date;
  final BankEntity bank;
  final BankTransactionStatusEnum status;
  final double amount;
  final String description;
  final UserEntity? receiver;
  final UserEntity? sender;

  const BankTransactionEntity({
    required this.id,
    required this.date,
    required this.bank,
    this.status = BankTransactionStatusEnum.pending,
    this.amount = 0,
    this.description = '',
    this.receiver,
    this.sender,
  });

  factory BankTransactionEntity.fromJson(Map<String, dynamic> json) => _$BankTransactionEntityFromJson(json);
  Map<String, dynamic> toJson() => _$BankTransactionEntityToJson(this);

  BankTransactionEntity copyWith({
    String? id,
    DateTime? date,
    BankEntity? bank,
    BankTransactionStatusEnum? status,
    double? amount,
    String? description,
    UserEntity? receiver,
    UserEntity? sender,
  }) {
    return BankTransactionEntity(
      id: id ?? this.id,
      date: date ?? this.date,
      bank: bank ?? this.bank,
      status: status ?? this.status,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      receiver: receiver ?? this.receiver,
      sender: sender ?? this.sender,
    );
  }

  @override
  List<Object?> get props => [
        id,
        date,
        bank,
        status,
        amount,
        description,
        receiver,
        sender,
      ];
}
