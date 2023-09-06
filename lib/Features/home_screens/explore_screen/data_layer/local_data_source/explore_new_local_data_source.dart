

import '../../domain/entity/explore_entity.dart';

abstract class ExploreNewLocalDataSource{
  List<ExploreEntity>  fetchNewPosts();
}
