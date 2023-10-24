import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/domain/repositories/pet_repository.dart';

class AddFavoriteUseCase extends UseCase<void, PetFavoriteModel> {
  final PetRepository petRepository;
  AddFavoriteUseCase({required this.petRepository});

  @override
  Future<void> call(PetFavoriteModel param) => petRepository.addFavorite(param);
}
