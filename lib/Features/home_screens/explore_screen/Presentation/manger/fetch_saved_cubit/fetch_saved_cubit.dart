import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:plant_care/core/errors/failure.dart';

import '../../../domain/entity/explore_entity.dart';
import '../../../domain/use_cases/explore_saved_use_case.dart';

part 'fetch_saved_state.dart';

class FetchSavedCubit extends Cubit<FetchSavedState> {
  FetchSavedCubit(this.exploreSavedUseCase) : super(FetchSavedInitial());


  final ExploreSavedUseCase exploreSavedUseCase;
  Future<void> fetchSavedPosts()async{
    emit(FetchSavedLoading());
    var result=await exploreSavedUseCase.call();
    result.fold((fail) => emit(FetchSavedError(fail.message) ), (posts) => emit(FetchSavedSuccess(posts)));
  }
}
