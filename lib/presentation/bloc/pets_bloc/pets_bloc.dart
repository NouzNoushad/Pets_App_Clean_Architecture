import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pet_app/core/errors/failure.dart';
import 'package:pet_app/data/models/pet_model.dart';
import 'package:pet_app/domain/usecases/pet_usecase.dart';

part 'pets_event.dart';
part 'pets_state.dart';

class PetsBloc extends Bloc<PetsEvent, PetsState> {
  final PetUseCase petUseCase;
  PetsBloc({required this.petUseCase}) : super(PetsInitial()) {
    on<PetsLoadedEvent>(getPetDetails());
  }

  EventHandler<PetsLoadedEvent, PetsState> getPetDetails() =>
      ((event, emit) async {
        emit(PetsLoadingState());
        try {
          Either<Failed, List<PetModel>> pets = await petUseCase.call();
          emit(pets.fold((failure) => PetsErrorState(failureToMsg(failure)),
              (petModel) => PetsLoadedState(petModel)));
        } catch (error) {
          emit(PetsErrorState(error.toString()));
        }
      });
}
