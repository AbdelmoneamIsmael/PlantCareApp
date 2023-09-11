import 'package:bloc/bloc.dart';

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
      (failure) => emit(FetchNewError(failure.message)),
      (posts) => emit(FetchNewSuccess(posts)),
    );
  }
}
