import 'package:dartz/dartz.dart';
import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';
import '../../core/errors/failure.dart';
import '../repositories/pet_repository.dart';

class PetUseCase extends UseCase<Either<Failed, List<PetEntity>>, void>{
  final PetRepository petRepository;
  PetUseCase({required this.petRepository});
  
  @override
  Future<Either<Failed, List<PetEntity>>> call(void param) => petRepository.getPetDetails();
}
