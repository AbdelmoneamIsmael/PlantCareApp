import '../../domain/entity/explore_entity.dart';

abstract class ExploreNewDataSource{
  Future<List<ExploreEntity>> fetchNewPosts();
}