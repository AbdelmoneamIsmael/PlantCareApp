import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../domain/entity/explore_entity.dart';
import '../../../domain/use_cases/explore_popular_use_case.dart';

part 'fetch_popular_state.dart';

class FetchPopularCubit extends Cubit<FetchPopularState> {
  FetchPopularCubit(this.explorePopularUseCase) : super(FetchPopularInitial());

  final ExplorePopularUseCase explorePopularUseCase;
  Future<void> fetchPopularPosts() async {
    emit(FetchPopularLoading());
    var result = await explorePopularUseCase.call();
    result.fold((fail) => emit(FetchPopularError(fail.message)),
        (posts) => emit(FetchPopularSuccess(posts)));
  }
}
