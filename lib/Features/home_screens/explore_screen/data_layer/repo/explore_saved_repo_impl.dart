import 'package:dartz/dartz.dart';

import 'package:plant_care/Features/home_screens/explore_screen/domain/entity/explore_entity.dart';

import 'package:plant_care/core/errors/failure.dart';

import '../../domain/explore_screens_repo/explore_saved_repo.dart';
import '../data/local_data_source/explore_savel_local_data_source.dart';
import '../data/remote_data_source/explore_savel_remote_source.dart';

class ExploreSavedRepoImpl extends ExploreSavedRepo{
  final ExploreSaveLocalDataSourceImpl exploreSaveLocalDataSourceImpl;
  final ExploreSaveDataSourceImplement exploreSaveRemoteDataSourceImplement;

  ExploreSavedRepoImpl(
      {required this.exploreSaveLocalDataSourceImpl,
        required this.exploreSaveRemoteDataSourceImplement});
  @override
  Future<Either<Failure, List<ExploreEntity>>> fetchSavedPosts() async{
    try {
      List<ExploreEntity> exploreDataLocal=exploreSaveLocalDataSourceImpl.fetchSavedPosts();
      if(exploreDataLocal.isNotEmpty){
        return right(exploreDataLocal);
      }
      List<ExploreEntity> exploreDataRemote= await exploreSaveRemoteDataSourceImplement.fetchSavedPosts();
      return  right(exploreDataRemote);
    } on Exception catch (e) {
      return left(Failure());
    }
  }
}