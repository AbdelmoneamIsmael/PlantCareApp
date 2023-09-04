import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/home_screens/profile_screen/domain/entity/profile_entity.dart';
import 'package:plant_care/Features/home_screens/profile_screen/domain/repo/profile_rep.dart';
import 'package:plant_care/core/errors/failure.dart';
import 'package:plant_care/core/use_case/use_cases.dart';

class FetchProfileData extends UseCase<ProfileEntity,NoParam>{
  final ProfileRepo profileRepo;

  FetchProfileData(this.profileRepo);
  @override
  Future<Either<Failure, ProfileEntity>> call([NoParam? param]) async{
  return await  profileRepo.fetchData();
  }

}

class DeleteProfileData extends UseCase<ProfileEntity,ProfileEntity>{
  final ProfileRepo profileRepo;

  DeleteProfileData(this.profileRepo);
  @override
  Future<Either<Failure, ProfileEntity>> call([ProfileEntity? param]) async{
    return await  profileRepo.deleteUserData();
  }

}

class UpdateProfileData extends UseCase<ProfileEntity,ProfileEntity>{
  final ProfileRepo profileRepo;

  UpdateProfileData(this.profileRepo);
  @override
  Future<Either<Failure, ProfileEntity>> call([ProfileEntity? param]) async{
    return await  profileRepo.updateData();
  }

}