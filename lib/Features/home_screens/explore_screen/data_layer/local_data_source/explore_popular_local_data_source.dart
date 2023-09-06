
import '../../domain/entity/explore_entity.dart';

abstract class ExplorePopularLocalDataSource{
  List<ExploreEntity>  fetchPopularPosts();
}
