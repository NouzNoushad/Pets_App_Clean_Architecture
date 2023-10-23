import 'package:dartz/dartz.dart';
import 'package:pet_app/data/models/pet_model.dart';
import '../../core/errors/failure.dart';
import '../repositories/pet_repository.dart';

class PetUseCase {
  final PetRepository petRepository;
  PetUseCase({required this.petRepository});

  Future<Either<Failed, List<PetModel>>> call() => petRepository.getPetDetails();
}
