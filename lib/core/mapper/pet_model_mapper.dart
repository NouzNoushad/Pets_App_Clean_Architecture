import '../../data/models/pet_model.dart';
import '../../domain/entity/pet_entity.dart';
import 'mapper.dart';

class PetModelMapper extends Mapper<PetModel, PetEntity> {
  @override
  PetModel fromEntity(PetEntity entity) => PetModel(
        weight: entity.weight,
        image: entity.image,
        id: entity.id,
        name: entity.name,
        cfaUrl: entity.cfaUrl,
        vetstreetUrl: entity.vetstreetUrl,
        vcahospitalsUrl: entity.vcahospitalsUrl,
        temperament: entity.temperament,
        origin: entity.origin,
        countryCodes: entity.countryCodes,
        countryCode: entity.countryCode,
        description: entity.description,
        lifeSpan: entity.lifeSpan,
        indoor: entity.indoor,
        lap: entity.lap,
        altNames: entity.altNames,
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
        vocalisation: entity.vocalisation,
        experimental: entity.experimental,
        hairless: entity.hairless,
        natural: entity.natural,
        rare: entity.rare,
        rex: entity.rex,
        suppressedTail: entity.suppressedTail,
        shortLegs: entity.shortLegs,
        wikipediaUrl: entity.wikipediaUrl,
        hypoallergenic: entity.hypoallergenic,
        referenceImageId: entity.referenceImageId,
        catFriendly: entity.catFriendly,
        bidability: entity.bidability,
      );

  @override
  PetEntity toEntity(PetModel model) => PetEntity(
        weight: model.weight,
        image: model.image,
        id: model.id,
        name: model.name,
        cfaUrl: model.cfaUrl,
        vetstreetUrl: model.vetstreetUrl,
        vcahospitalsUrl: model.vcahospitalsUrl,
        temperament: model.temperament,
        origin: model.origin,
        countryCodes: model.countryCodes,
        countryCode: model.countryCode,
        description: model.description,
        lifeSpan: model.lifeSpan,
        indoor: model.indoor,
        lap: model.lap,
        altNames: model.altNames,
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
        vocalisation: model.vocalisation,
        experimental: model.experimental,
        hairless: model.hairless,
        natural: model.natural,
        rare: model.rare,
        rex: model.rex,
        suppressedTail: model.suppressedTail,
        shortLegs: model.shortLegs,
        wikipediaUrl: model.wikipediaUrl,
        hypoallergenic: model.hypoallergenic,
        referenceImageId: model.referenceImageId,
        catFriendly: model.catFriendly,
        bidability: model.bidability,
      );
}
