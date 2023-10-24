import 'package:hive/hive.dart';

part 'pet_favorite_model.g.dart';

@HiveType(typeId: 0)
class PetFavoriteModel extends HiveObject {
  @HiveField(0)
  String image;
  @HiveField(1)
  String id;
  @HiveField(2)
  String name;
  @HiveField(3)
  String description;
  @HiveField(4)
  int adaptability;
  @HiveField(5)
  int affectionLevel;
  @HiveField(6)
  int childFriendly;
  @HiveField(7)
  int dogFriendly;
  @HiveField(8)
  int energyLevel;
  @HiveField(9)
  int grooming;
  @HiveField(10)
  int healthIssues;
  @HiveField(11)
  int intelligence;
  @HiveField(12)
  int sheddingLevel;
  @HiveField(13)
  int socialNeeds;
  @HiveField(14)
  int strangerFriendly;

  PetFavoriteModel(
      this.image,
      this.id,
      this.adaptability,
      this.affectionLevel,
      this.childFriendly,
      this.description,
      this.dogFriendly,
      this.energyLevel,
      this.grooming,
      this.healthIssues,
      this.intelligence,
      this.name,
      this.sheddingLevel,
      this.socialNeeds,
      this.strangerFriendly);
}
