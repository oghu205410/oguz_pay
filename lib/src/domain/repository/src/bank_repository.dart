import '../../entity/entity.dart';

abstract class BankRepository {
  Future<List<BankEntity>> getBanks();
}
