

import '../../domain/entity/explore_entity.dart';

abstract class ExploreAllDataSource{
  Future<List<ExploreEntity>> fetchYouMayLikeIt();
  Future<List<ExploreEntity>>  fetchStanderPosts();
}