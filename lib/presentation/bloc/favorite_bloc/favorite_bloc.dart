import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/domain/entity/pet_favorite_entity.dart';
import 'package:pet_app/domain/usecases/add_favorite_usecase.dart';
import 'package:pet_app/domain/usecases/get_favorite_usecase.dart';
import 'package:pet_app/domain/usecases/remove_favorite_usecase.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final GetFavoriteUseCase getFavoriteUseCase;
  final AddFavoriteUseCase addFavoriteUseCase;
  final RemoveFavoriteUseCase removeFavoriteUseCase;
  FavoriteBloc(
      {required this.getFavoriteUseCase,
      required this.addFavoriteUseCase,
      required this.removeFavoriteUseCase})
      : super(FavoriteInitial()) {
    on<FavoriteLoadedEvent>(getFavorites());
    on<FavoriteAddedEvent>(addFavorite());
    on<FavoriteRemovedEvent>(removeFavorite());
  }

  EventHandler<FavoriteLoadedEvent, FavoriteState> getFavorites() =>
      ((event, emit) async {
        emit(FavoriteLoadingState());
        try {
          List<PetFavoriteEntity> favorites =
              await getFavoriteUseCase.call(emptyParams);
          emit(FavoriteLoadedState(favorites));
        } catch (error) {
          emit(FavoriteErrorState(error.toString()));
        }
      });

  EventHandler<FavoriteAddedEvent, FavoriteState> addFavorite() =>
      ((event, emit) async {
        try {
          await addFavoriteUseCase.call(event.petFavoriteModel);
          add(const FavoriteLoadedEvent());
          emit(const FavoriteAddedState());
        } catch (error) {
          emit(FavoriteErrorState(error.toString()));
        }
      });

  EventHandler<FavoriteRemovedEvent, FavoriteState> removeFavorite() =>
      ((event, emit) async {
        try {
          await removeFavoriteUseCase.call(event.petId);
          add(const FavoriteLoadedEvent());
          emit(const FavoriteRemovedState());
        } catch (error) {
          emit(FavoriteErrorState(error.toString()));
        }
      });
}
