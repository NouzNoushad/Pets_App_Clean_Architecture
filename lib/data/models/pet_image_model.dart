import 'package:pet_app/domain/entity/pet_image_entity.dart';

class PetImageModel extends PetImageEntity {
  PetImageModel({super.id, super.url, super.width, super.height});

  factory PetImageModel.fromJson(Map<String, dynamic> json) => PetImageModel(
        id: json["id"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "width": width,
        "height": height,
      };
}