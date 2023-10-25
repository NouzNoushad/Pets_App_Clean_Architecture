import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/domain/entity/pet_favorite_entity.dart';
import 'package:pet_app/domain/repositories/pet_repository.dart';

class GetFavoriteUseCase extends UseCase<List<PetFavoriteEntity>, void> {
  final PetRepository petRepository;
  GetFavoriteUseCase({required this.petRepository});
  
  @override
  Future<List<PetFavoriteEntity>> call(void param) => petRepository.getFavorites();
}
