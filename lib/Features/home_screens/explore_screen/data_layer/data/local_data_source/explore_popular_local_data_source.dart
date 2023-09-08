
import 'package:hive/hive.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

import '../../../domain/entity/explore_entity.dart';



abstract class ExplorePopularLocalDataSource{
  List<ExploreEntity>  fetchPopularPosts();
}
class ExplorePopularLocalDataSourceImpl extends ExplorePopularLocalDataSource{
  @override
  List<ExploreEntity> fetchPopularPosts() {
   var box= Hive.box<ExploreEntity>(StringsAndPathes.kFetchPopularPosts);
   return box.values.toList();
  }
}
