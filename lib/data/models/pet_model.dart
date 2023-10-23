import 'package:pet_app/data/models/weight_model.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';

class PetModel extends PetEntity {
  PetModel(
      {super.weight,
      super.id,
      super.name,
      super.temperament,
      super.origin,
      super.countryCodes,
      super.countryCode,
      super.description,
      super.lifeSpan,
      super.indoor,
      super.adaptability,
      super.affectionLevel,
      super.childFriendly,
      super.dogFriendly,
      super.energyLevel,
      super.grooming,
      super.healthIssues,
      super.intelligence,
      super.sheddingLevel,
      super.socialNeeds,
      super.strangerFriendly,
      super.vocalisation,
      super.experimental,
      super.hairless,
      super.natural,
      super.rare,
      super.rex,
      super.suppressedTail,
      super.shortLegs,
      super.hypoallergenic,
      super.cfaUrl,
      super.vetstreetUrl,
      super.vcahospitalsUrl,
      super.lap,
      super.altNames,
      super.wikipediaUrl,
      super.referenceImageId,
      super.catFriendly,
      super.bidability});

  factory PetModel.fromJson(Map<String, dynamic> json) => PetModel(
        weight: WeightModel.fromJson(json["weight"]),
        id: json["id"],
        name: json["name"],
        cfaUrl: json["cfa_url"],
        vetstreetUrl: json["vetstreet_url"],
        vcahospitalsUrl: json["vcahospitals_url"],
        temperament: json["temperament"],
        origin: json["origin"],
        countryCodes: json["country_codes"],
        countryCode: json["country_code"],
        description: json["description"],
        lifeSpan: json["life_span"],
        indoor: json["indoor"],
        lap: json["lap"],
        altNames: json["alt_names"],
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        childFriendly: json["child_friendly"],
        dogFriendly: json["dog_friendly"],
        energyLevel: json["energy_level"],
        grooming: json["grooming"],
        healthIssues: json["health_issues"],
        intelligence: json["intelligence"],
        sheddingLevel: json["shedding_level"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        vocalisation: json["vocalisation"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        natural: json["natural"],
        rare: json["rare"],
        rex: json["rex"],
        suppressedTail: json["suppressed_tail"],
        shortLegs: json["short_legs"],
        wikipediaUrl: json["wikipedia_url"],
        hypoallergenic: json["hypoallergenic"],
        referenceImageId: json["reference_image_id"],
        catFriendly: json["cat_friendly"],
        bidability: json["bidability"],
      );

  Map<String, dynamic> toJson() => {
        "weight": weight?.toJson(),
        "id": id,
        "name": name,
        "cfa_url": cfaUrl,
        "vetstreet_url": vetstreetUrl,
        "vcahospitals_url": vcahospitalsUrl,
        "temperament": temperament,
        "origin": origin,
        "country_codes": countryCodes,
        "country_code": countryCode,
        "description": description,
        "life_span": lifeSpan,
        "indoor": indoor,
        "lap": lap,
        "alt_names": altNames,
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "child_friendly": childFriendly,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "grooming": grooming,
        "health_issues": healthIssues,
        "intelligence": intelligence,
        "shedding_level": sheddingLevel,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "vocalisation": vocalisation,
        "experimental": experimental,
        "hairless": hairless,
        "natural": natural,
        "rare": rare,
        "rex": rex,
        "suppressed_tail": suppressedTail,
        "short_legs": shortLegs,
        "wikipedia_url": wikipediaUrl,
        "hypoallergenic": hypoallergenic,
        "reference_image_id": referenceImageId,
        "cat_friendly": catFriendly,
        "bidability": bidability,
      };
}