import '../../data/models/pet_favorite_model.dart';
import '../../domain/entity/pet_favorite_entity.dart';
import 'mapper.dart';

class PetFavoriteMapper extends Mapper<PetFavoriteModel, PetFavoriteEntity> {
  @override
  PetFavoriteModel fromEntity(PetFavoriteEntity entity) => PetFavoriteModel(
        image: entity.image,
        id: entity.id,
        name: entity.name,
        description: entity.description,
        adaptability: entity.adaptability,
        affectionLevel: entity.affectionLevel,
        childFriendly: entity.childFriendly,
        dogFriendly: entity.dogFriendly,
        energyLevel: entity.energyLevel,
        grooming: entity.grooming,
        healthIssues: entity.healthIssues,
        intelligence: entity.intelligence,
        sheddingLevel: entity.sheddingLevel,
        socialNeeds: entity.socialNeeds,
        strangerFriendly: entity.strangerFriendly,
      );

  @override
  PetFavoriteEntity toEntity(PetFavoriteModel model) => PetFavoriteEntity(
        image: model.image,
        id: model.id,
        name: model.name,
        description: model.description,
        adaptability: model.adaptability,
        affectionLevel: model.affectionLevel,
        childFriendly: model.childFriendly,
        dogFriendly: model.dogFriendly,
        energyLevel: model.energyLevel,
        grooming: model.grooming,
        healthIssues: model.healthIssues,
        intelligence: model.intelligence,
        sheddingLevel: model.sheddingLevel,
        socialNeeds: model.socialNeeds,
        strangerFriendly: model.strangerFriendly,
      );
}
