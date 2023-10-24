import 'package:dartz/dartz.dart';
import 'package:pet_app/core/errors/failure.dart';
import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';

abstract class PetRepository {
  Future<Either<Failed, List<PetEntity>>> getPetDetails();
  Future<List<PetFavoriteModel>> getFavorites();
  Future<bool> addFavorite(PetFavoriteModel petEntity);
  Future<bool> removeFavorite(String petId);
}
