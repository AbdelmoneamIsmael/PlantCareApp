import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:plant_care/core/reuseable_widgets/fill_hive.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';
import '../../domain/entity/explore_entity.dart';
import '../models/Plant_details.dart';

abstract class ExploreAllDataSource {
  Future<List<ExploreEntity>> fetchYouMayLikeIt();
  Future<List<ExploreEntity>> fetchStanderPosts();
}

class ExploreAllDataSourceImplement extends ExploreAllDataSource {
  @override
  Future<List<ExploreEntity>> fetchStanderPosts() async {
    List<ExploreEntity> exploreAll = [];

    await FirebaseFirestore.instance.collection('Plants').get().then(
          (value) => value.docs.forEach((element) {
            exploreAll.add(PlantDetails.fromJson(element.data()));
          }),
        );

    fillHive(StringsAndPathes.kFetchStanderPosts, exploreAll);
    return exploreAll;
  }

  @override
  Future<List<ExploreEntity>> fetchYouMayLikeIt() async {
    List<ExploreEntity> exploreAll = [];

    await FirebaseFirestore.instance.collection('Plants').get().then(
          (value) => value.docs.forEach((element) {
            exploreAll.add(PlantDetails.fromJson(element.data()));
          }),
        );
    fillHive(StringsAndPathes.kFetchYouMayLike, exploreAll);

    return exploreAll;
  }
}
