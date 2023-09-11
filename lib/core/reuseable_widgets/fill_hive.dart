// ignore: depend_on_referenced_packages
import 'package:hive/hive.dart';
import 'package:plant_care/Features/home_screens/explore_screen/domain/entity/explore_entity.dart';

void fillHive(String boxName, List<ExploreEntity> list) {
  var box = Hive.box<ExploreEntity>(boxName);
  box.addAll(list);
}
