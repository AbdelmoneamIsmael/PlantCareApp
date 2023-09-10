part of 'fetch_new_cubit.dart';

@immutable
abstract class FetchNewState {}

class FetchNewInitial extends FetchNewState {}

class FetchNewLoading extends FetchNewState {}
class FetchNewSuccess extends FetchNewState {
  final List<ExploreEntity> exploreEntity;

  FetchNewSuccess(this.exploreEntity);
}
class FetchNewError extends FetchNewState {
  final String e;

  FetchNewError(this.e);

}