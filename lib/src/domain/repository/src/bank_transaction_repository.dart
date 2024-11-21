import '../../entity/src/bank_transaction_entity.dart';

abstract interface class BankTransactionRepository {
  Future<List<BankTransactionEntity>> getTransactions();

  Future<BankTransactionEntity> getTransaction();

  Future<BankTransactionEntity> updateTransaction(BankTransactionEntity transaction);
}
