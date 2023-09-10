

import 'package:hive/hive.dart';

import '../../../../../../core/strings_and_pathes/strings_and_pathes.dart';
import '../../../domain/entity/explore_entity.dart';


abstract class ExploreAllLocalDataSource {
  List<ExploreEntity> fetchYouMayLikeIt();
  List<ExploreEntity> fetchStanderPosts();
}
class ExploreAllLocalDataSourceImpl extends ExploreAllLocalDataSource{
  @override
  List<ExploreEntity> fetchStanderPosts() {
    var box= Hive.box<ExploreEntity>(StringsAndPathes.kFetchStanderPosts);
    return box.values.toList() ;
  }

  @override
  List<ExploreEntity> fetchYouMayLikeIt() {
    Box<ExploreEntity> box= Hive.box<ExploreEntity>(StringsAndPathes.kFetchYouMayLike);
    return box.values.toList() ;
  }

}