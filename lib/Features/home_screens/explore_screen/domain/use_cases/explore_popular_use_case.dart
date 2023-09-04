import 'package:dartz/dartz.dart';
import 'package:plant_care/core/errors/failure.dart';
import 'package:plant_care/core/use_case/use_cases.dart';
import '../entity/explore_entity.dart';
import '../explore_screens_repo/explore_popular_repo.dart';


class ExplorePopularUseCase extends UseCase<List<ExploreEntity>,NoParam>{
  final ExplorePopularRepo explorePopularRepo;

  ExplorePopularUseCase(this.explorePopularRepo);

  @override
  Future<Either<Failure, List<ExploreEntity>>> call([NoParam? param]) async {
    return await explorePopularRepo.fetchPopularPosts();
  }

}