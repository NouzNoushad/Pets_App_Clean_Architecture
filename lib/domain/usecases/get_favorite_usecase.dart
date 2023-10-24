import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/domain/repositories/pet_repository.dart';

class GetFavoriteUseCase extends UseCase<List<PetFavoriteModel>, void> {
  final PetRepository petRepository;
  GetFavoriteUseCase({required this.petRepository});
  
  @override
  Future<List<PetFavoriteModel>> call(void param) => petRepository.getFavorites();
}
