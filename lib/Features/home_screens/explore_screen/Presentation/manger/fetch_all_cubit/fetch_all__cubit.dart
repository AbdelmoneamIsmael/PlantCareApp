import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../domain/entity/explore_entity.dart';
import '../../../domain/use_cases/explore_all_use_case.dart';

part 'fetch_all__state.dart';

class FetchAllYouMayLikeCubit extends Cubit<FetchAllState> {
  FetchAllYouMayLikeCubit(this.exploreAllYMLUseCase) : super(FetchAllInitial());

  final ExploreAllYMLUseCase exploreAllYMLUseCase;
  Future<void> fetchYouMayLike() async {
    emit(FetchAllLoading());
    var result = await exploreAllYMLUseCase.call();
    result.fold(
      (failure) {
        emit(FetchAllError(failure.firebaseException));
      }
      ,
      (posts) {
        emit(FetchAllSuccess(posts));
      },
    );
  }
}


class FetchAllStanderCubit extends Cubit<FetchAllState> {
  FetchAllStanderCubit(this.exploreAllStanderUseCase) : super(FetchAllInitial());

  final ExploreAllStanderUseCase exploreAllStanderUseCase;
  Future<void> fetchYouMayLike() async {
    emit(FetchAllLoading());
    var result = await exploreAllStanderUseCase.call();
    result.fold(
          (failure) {
        emit(FetchAllError(failure.firebaseException));
      }
      ,
          (posts) {
        emit(FetchAllSuccess(posts));
      },
    );
  }
}

