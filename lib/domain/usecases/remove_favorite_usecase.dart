import 'package:pet_app/core/usecase/usecase.dart';
import 'package:pet_app/domain/repositories/pet_repository.dart';

class RemoveFavoriteUseCase extends UseCase<void, String> {
  final PetRepository petRepository;
  RemoveFavoriteUseCase({required this.petRepository});

  @override
  Future<void> call(String param) => petRepository.removeFavorite(param);
}
