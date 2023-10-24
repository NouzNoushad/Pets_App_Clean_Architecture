import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/core/errors/failure.dart';
import 'package:pet_app/core/utils/extensions.dart';
import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';
import 'package:pet_app/domain/repositories/pet_repository.dart';

import '../data_source/data_source.dart';

class PetRepositoryImpl extends PetRepository {
  final PetDataSourceRemote petDataSourceRemote;
  final PetDataSourceLocal petDataSourceLocal;
  PetRepositoryImpl(
      {required this.petDataSourceRemote, required this.petDataSourceLocal});

  @override
  Future<Either<Failed, List<PetEntity>>> getPetDetails() async {
    try {
      List<PetEntity> petEntity = (await petDataSourceRemote.getPetDataSource())
          .map((e) => e.toEntity)
          .toList();
      return Right(petEntity);
    } on SocketException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<bool> addFavorite(PetFavoriteModel petEntity) async =>
      await petDataSourceLocal.addFavorite(petEntity);

  @override
  Future<List<PetFavoriteModel>> getFavorites() async {
    var pet = await petDataSourceLocal.getFavorites();
    debugPrint('///////////////// favorites pet: $pet');
    return pet;
  }

  @override
  Future<bool> removeFavorite(String petId) async =>
      await petDataSourceLocal.removeFavorite(petId);
}
