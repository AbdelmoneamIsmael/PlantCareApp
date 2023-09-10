import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../domain/entity/explore_entity.dart';
import '../../../domain/use_cases/explore_new_use_case.dart';

part 'fetch_new_state.dart';

class FetchNewCubit extends Cubit<FetchNewState> {
  FetchNewCubit(this.exploreNewUseCase) : super(FetchNewInitial());

  final ExploreNewUseCase exploreNewUseCase;
  Future<void> fetchNewPosts() async {
    emit(FetchNewLoading());
    var result = await exploreNewUseCase.call();
    result.fold(
      (failure) => emit(FetchNewError(failure.firebaseException)),
      (posts) => emit(FetchNewSuccess(posts)),
    );
  }
}
