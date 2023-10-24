part of 'favorite_bloc.dart';

sealed class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

class FavoriteLoadedEvent extends FavoriteEvent {
  const FavoriteLoadedEvent();

  @override
  List<Object> get props => [];
}

class FavoriteAddedEvent extends FavoriteEvent {
  final PetFavoriteModel petFavoriteModel;
  const FavoriteAddedEvent(this.petFavoriteModel);

  @override
  List<Object> get props => [petFavoriteModel];
}

class FavoriteRemovedEvent extends FavoriteEvent {
  final String petId;
  const FavoriteRemovedEvent(this.petId);

  @override
  List<Object> get props => [petId];
}
