import 'package:pet_app/domain/entity/pet_favorite_entity.dart';

class PetFavoriteModel extends PetFavoriteEntity {
  PetFavoriteModel(
      {super.image,
      super.id,
      super.adaptability,
      super.affectionLevel,
      super.childFriendly,
      super.description,
      super.dogFriendly,
      super.energyLevel,
      super.grooming,
      super.healthIssues,
      super.intelligence,
      super.name,
      super.sheddingLevel,
      super.socialNeeds,
      super.strangerFriendly});

  factory PetFavoriteModel.fromJson(Map<String, dynamic> json) => PetFavoriteModel(
        image: json["image"],
        id: json["id"],
        name: json["name"],
        description: json["description"],
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
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
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
      };
}
