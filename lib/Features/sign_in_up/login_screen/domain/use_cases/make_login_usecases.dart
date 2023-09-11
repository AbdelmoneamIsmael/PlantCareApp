import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/sign_in_up/login_screen/domain/entity/login_entity.dart';
import 'package:plant_care/Features/sign_in_up/login_screen/domain/login_repo/login_rep.dart';
import 'package:plant_care/core/use_case/use_cases.dart';

import '../../../../../core/errors/failure.dart';

class MakeLoginUseCase extends UseCase<UserInformation, NoParam> {
  final LoginRepo loginRepo;

  MakeLoginUseCase(this.loginRepo);

  @override
  Future<Either<Failure, UserInformation>> call([NoParam? param]) async {
    return await loginRepo.makeLogin();
  }
}
