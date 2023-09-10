part of 'fetch_saved_cubit.dart';

@immutable
abstract class FetchSavedState {}

class FetchSavedInitial extends FetchSavedState {}

class FetchSavedLoading extends FetchSavedState {}
class FetchSavedSuccess extends FetchSavedState {
  final List<ExploreEntity> exploreEntity;

  FetchSavedSuccess(this.exploreEntity);




}
class FetchSavedError extends FetchSavedState {
  final String e;

  FetchSavedError(this.e);





}