import 'package:dartz/dartz.dart';
import 'package:plant_care/Features/login_screen/domain/login_repo/login_rep.dart';
import 'package:plant_care/core/use_case/use_cases.dart';

import '../../../../core/errors/failure.dart';

class MakeLoginUseCase extends UseCase<bool,NoParam>{
  final LoginRepo loginRepo;

  MakeLoginUseCase(this.loginRepo);

  @override
  Future<Either<Failure, bool>> call([NoParam? param]) async {
     return await loginRepo.makeLogin();
  }



}