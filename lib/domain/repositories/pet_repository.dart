import 'package:dartz/dartz.dart';
import 'package:pet_app/core/errors/failure.dart';
import 'package:pet_app/data/models/pet_model.dart';

abstract class PetRepository {
  Future<Either<Failed, List<PetModel>>> getPetDetails();
}
