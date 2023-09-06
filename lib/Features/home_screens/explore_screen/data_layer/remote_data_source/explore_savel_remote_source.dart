import '../../domain/entity/explore_entity.dart';
abstract class ExploreSaveDataSource{
  Future<List<ExploreEntity>> fetchSavedPosts();
}