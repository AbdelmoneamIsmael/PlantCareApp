 import 'package:dartz/dartz.dart';

import 'package:plant_care/Features/home_screens/explore_screen/domain/entity/explore_entity.dart';

import 'package:plant_care/core/errors/failure.dart';

import '../../domain/explore_screens_repo/explore_all_repo.dart';
import '../data/local_data_source/explore_all_local_data_source.dart';
import '../data/remote_data_source/explore_all_remote_source.dart';

class ExploreAllRepoImpl extends ExploreAllRepo{
  final ExploreAllLocalDataSourceImpl exploreAllLocalDataSourceImpl;
  final ExploreAllDataSourceImplement exploreAllRemoteDataSourceImplement;

  ExploreAllRepoImpl(
      {required this.exploreAllLocalDataSourceImpl,
      required this.exploreAllRemoteDataSourceImplement});
  @override
  Future<Either<Failure, List<ExploreEntity>>> fetchStanderPosts() async {

    try {
      List<ExploreEntity> exploreDataLocal=exploreAllLocalDataSourceImpl.fetchStanderPosts();
      if(exploreDataLocal.isNotEmpty){
        return right(exploreDataLocal);
      }
      List<ExploreEntity> exploreDataRemote= await exploreAllRemoteDataSourceImplement.fetchStanderPosts();
      return  right(exploreDataRemote);
    } on Exception catch (e) {
      return left(Failure());
    }

  }

  @override
  Future<Either<Failure, List<ExploreEntity>>> fetchYouMayLikeIt() async{
    try {
      List<ExploreEntity> exploreDataLocal=exploreAllLocalDataSourceImpl.fetchYouMayLikeIt();
      if(exploreDataLocal.isNotEmpty){
        return right(exploreDataLocal);
      }
      var exploreDataRemote= await exploreAllRemoteDataSourceImplement.fetchYouMayLikeIt();
      return  right(exploreDataRemote);
    } on Exception catch (e) {
      return left(Failure());
    }
  }
}