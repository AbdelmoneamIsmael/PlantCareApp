part of 'fetch_all__cubit.dart';

abstract class FetchAllState {}

class FetchAllInitial extends FetchAllState {}

class FetchAllLoading extends FetchAllState {}

class FetchAllSuccess extends FetchAllState {
  final List<ExploreEntity> exploreEntity;

  FetchAllSuccess(this.exploreEntity);
}

class FetchAllError extends FetchAllState {
  final String e;

  FetchAllError(this.e);
}
