import 'package:oguz_pay/src/domain/entity/entity.dart';

abstract interface class BankCardRepository {
  Future<List<BankCardEntity>> getBankCards();
  Future<void> addBankCard(BankCardEntity bankCard);
  Future<void> deleteBankCard(BankCardEntity bankCard);
}
