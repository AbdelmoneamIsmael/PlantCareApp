import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/home_screens/explore_screen/domain/explore_screens_repo/explore_new_repo.dart';
import 'package:plant_care/core/errors/failure.dart';
import 'package:plant_care/core/use_case/use_cases.dart';
import '../entity/explore_entity.dart';


class ExploreNewUseCase extends UseCase<List<ExploreEntity>,NoParam>{
  final ExploreNewRepo exploreNewRepo;

  ExploreNewUseCase(this.exploreNewRepo);

  @override
  Future<Either<Failure, List<ExploreEntity>>> call([NoParam? param]) async {
    return await exploreNewRepo.fetchNewPosts();
  }

}