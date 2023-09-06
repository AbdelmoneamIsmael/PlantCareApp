import '../../domain/entity/explore_entity.dart';
abstract class ExplorePopularDataSource{
  Future<List<ExploreEntity>> fetchPopularPosts();
}