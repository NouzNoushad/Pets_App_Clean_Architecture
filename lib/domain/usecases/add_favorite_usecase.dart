import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/domain/entity/pet_favorite_entity.dart';
import 'package:pet_app/domain/repositories/pet_repository.dart';

class AddFavoriteUseCase extends UseCase<void, PetFavoriteEntity> {
  final PetRepository petRepository;
  AddFavoriteUseCase({required this.petRepository});

  @override
  Future<void> call(PetFavoriteEntity param) => petRepository.addFavorite(param);
}
