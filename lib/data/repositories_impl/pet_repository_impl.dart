import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pet_app/core/errors/failure.dart';
import 'package:pet_app/data/models/pet_model.dart';
import 'package:pet_app/domain/repositories/pet_repository.dart';

import '../data_source/data_source.dart';

class PetRepositoryImpl extends PetRepository {
  final PetDataSourceRemote petDataSourceRemote;
  PetRepositoryImpl({required this.petDataSourceRemote});

  @override
  Future<Either<Failed, List<PetModel>>> getPetDetails() async {
    try {
      List<PetModel> petModel = await petDataSourceRemote.getPetDataSource();
      print('/////////// petModel : $petModel');
      return Right(petModel);
    } on SocketException {
      return Left(ServerFailure());
    }
  }
}
