part of 'fetch_popular_cubit.dart';

abstract class FetchPopularState {}

class FetchPopularInitial extends FetchPopularState {}

class FetchPopularLoading extends FetchPopularState {}

class FetchPopularSuccess extends FetchPopularState {
  final List<ExploreEntity> exploreEntity;

  FetchPopularSuccess(this.exploreEntity);
}

class FetchPopularError extends FetchPopularState {
  final String e;

  FetchPopularError(this.e);
}
