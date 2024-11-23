import '../../entity/entity.dart';

abstract interface class NewsRepository {
  Future<List<NewsEntity>> getNews({int? offset, int? limit});
}
