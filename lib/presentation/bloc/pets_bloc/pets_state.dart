part of 'pets_bloc.dart';

sealed class PetsState extends Equatable {
  const PetsState();

  @override
  List<Object> get props => [];
}

final class PetsInitial extends PetsState {}

final class PetsLoadingState extends PetsState {}

class PetsLoadedState extends PetsState {
  final List<PetModel> petModel;
  const PetsLoadedState(this.petModel);

  @override
  List<Object> get props => [petModel];
}

class PetsErrorState extends PetsState {
  final String error;
  const PetsErrorState(this.error);

  @override
  List<Object> get props => [error];
}
