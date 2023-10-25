import 'package:dartz/dartz.dart';
import 'package:pet_app/core/errors/failure.dart';
import 'package:pet_app/domain/entity/pet_favorite_entity.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';

abstract class PetRepository {
  Future<Either<Failed, List<PetEntity>>> getPetDetails();
  Future<List<PetFavoriteEntity>> getFavorites();
  Future<bool> addFavorite(PetFavoriteEntity petEntity);
  Future<bool> removeFavorite(String petId);
}
