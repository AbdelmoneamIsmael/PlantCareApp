import 'package:dartz/dartz.dart';
import 'package:plant_care/core/errors/failure.dart';
import 'package:plant_care/core/use_case/use_cases.dart';
import '../entity/explore_entity.dart';
import '../explore_screens_repo/explore_all_repo.dart';


class ExploreAllYMLUseCase extends UseCase<List<ExploreEntity>,NoParam>{
  final ExploreAllRepo exploreAllRepo;

  ExploreAllYMLUseCase(this.exploreAllRepo);

  @override
  Future<Either<Failure, List<ExploreEntity>>> call([NoParam? param]) async {
    return await exploreAllRepo.fetchYouMayLikeIt();
  }

}


class ExploreAllStanderUseCase extends UseCase<List<ExploreEntity>,NoParam>{
  final ExploreAllRepo exploreAllRepo;

  ExploreAllStanderUseCase(this.exploreAllRepo);

  @override
  Future<Either<Failure, List<ExploreEntity>>> call([NoParam? param]) async {
    return await  exploreAllRepo.fetchStanderPosts();
  }

}