import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/data/models/pet_model.dart';

abstract class PetDataSourceRemote {
  Future<List<PetModel>> getPetDataSource();
  Future<String?> getPetImageDataSource(String breedId);
}

abstract class PetDataSourceLocal {
  Future<List<PetFavoriteModel>> getFavorites();
  Future<bool> addFavorite(PetFavoriteModel petModel);
  Future<bool> removeFavorite(String petId);
}
