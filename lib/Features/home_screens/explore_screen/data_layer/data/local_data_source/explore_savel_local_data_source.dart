import 'package:hive/hive.dart';

import '../../../../../../core/strings_and_pathes/strings_and_pathes.dart';
import '../../../domain/entity/explore_entity.dart';



abstract class ExploreSaveLocalDataSource {
  List<ExploreEntity>  fetchSavedPosts();
}
class ExploreSaveLocalDataSourceImpl extends ExploreSaveLocalDataSource{
  @override
  List<ExploreEntity> fetchSavedPosts() {
    var box =Hive.box<ExploreEntity>(StringsAndPathes.kFetchSavedPosts);
    return box.values.toList();
  }

}