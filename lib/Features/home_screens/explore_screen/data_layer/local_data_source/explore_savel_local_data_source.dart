

import '../../domain/entity/explore_entity.dart';


abstract class ExploreSaveLocalDataSource {
  List<ExploreEntity>  fetchSavedPosts();
}
