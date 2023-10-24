part of 'pets_bloc.dart';

sealed class PetsState extends Equatable {
  const PetsState();

  @override
  List<Object> get props => [];
}

final class PetsInitial extends PetsState {}

final class PetsLoadingState extends PetsState {}

class PetsLoadedState extends PetsState {
  final List<PetEntity> petEntity;
  const PetsLoadedState(this.petEntity);

  @override
  List<Object> get props => [petEntity];
}

class PetsErrorState extends PetsState {
  final String error;
  const PetsErrorState(this.error);

  @override
  List<Object> get props => [error];
}
