

import 'package:hive/hive.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

import '../../../domain/entity/explore_entity.dart';

abstract class ExploreNewLocalDataSource{
  List<ExploreEntity>  fetchNewPosts();
}
class ExploreNewLocalDataSourceImpl extends ExploreNewLocalDataSource {
  @override
  List<ExploreEntity> fetchNewPosts() {
    var box=Hive.box<ExploreEntity>(StringsAndPathes.kFetchNewPosts);
    return box.values.toList();
  }

}