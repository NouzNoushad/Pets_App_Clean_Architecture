part of 'favorite_bloc.dart';

sealed class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object> get props => [];
}

final class FavoriteInitial extends FavoriteState {}

final class FavoriteLoadingState extends FavoriteState {}

class FavoriteLoadedState extends FavoriteState {
  final List<PetFavoriteModel> favorites;
  const FavoriteLoadedState(this.favorites);

  @override
  List<Object> get props => [favorites];
}

class FavoriteAddedState extends FavoriteState {
  const FavoriteAddedState();

  @override
  List<Object> get props => [];
}

class FavoriteRemovedState extends FavoriteState {
  const FavoriteRemovedState();

  @override
  List<Object> get props => [];
}

class FavoriteErrorState extends FavoriteState {
  final String error;
  const FavoriteErrorState(this.error);

  @override
  List<Object> get props => [error];
}
