import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pet_app/core/errors/failure.dart';
import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';
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
          Either<Failed, List<PetEntity>> pets =
              await petUseCase.call(emptyParams);
          emit(pets.fold((failure) => PetsErrorState(failureToMsg(failure)),
              (petEntity) => PetsLoadedState(petEntity)));
        } catch (error) {
          emit(PetsErrorState(error.toString()));
        }
      });
}
