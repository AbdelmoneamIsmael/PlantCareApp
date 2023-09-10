part of 'fetch_popular_cubit.dart';

@immutable
abstract class FetchPopularState {}

class FetchPopularInitial extends FetchPopularState {}

class FetchPopularLoading extends FetchPopularState {}
class FetchPopularSuccess extends FetchPopularState {
   final List<ExploreEntity> exploreEntity;

  FetchPopularSuccess(this.exploreEntity);


}
class FetchPopularError extends FetchPopularState {
  final FirebaseException firebaseException;

  FetchPopularError(this.firebaseException);



}