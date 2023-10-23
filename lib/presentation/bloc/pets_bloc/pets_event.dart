part of 'pets_bloc.dart';

sealed class PetsEvent extends Equatable {
  const PetsEvent();

  @override
  List<Object> get props => [];
}

class PetsLoadedEvent extends PetsEvent {
  const PetsLoadedEvent();

  @override
  List<Object> get props => [];
}
