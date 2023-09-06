

import '../../domain/entity/explore_entity.dart';

abstract class ExploreAllLocalDataSource {
  List<ExploreEntity> fetchYouMayLikeIt();
  List<ExploreEntity> fetchStanderPosts();
}