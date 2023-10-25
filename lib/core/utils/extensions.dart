import 'package:flutter/material.dart';
import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/domain/entity/pet_favorite_entity.dart';

import '../../data/models/pet_model.dart';
import '../../domain/entity/pet_entity.dart';
import '../mapper/pet_favorite_mapper.dart';
import '../mapper/pet_model_mapper.dart';

extension MediaQuerySize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension PetFavoriteExt on PetFavoriteModel {
  PetFavoriteEntity get toFavoriteEntity => PetFavoriteMapper().toEntity(this);
}

extension PetFavoriteEntityExt on PetFavoriteEntity {
  PetFavoriteModel get fromFavoriteEntity => PetFavoriteMapper().fromEntity(this);
}

extension PetModelExt on PetModel {
  PetEntity get toEntity => PetModelMapper().toEntity(this);
}

extension PetEntityExt on PetEntity {
  PetModel get fromEntity => PetModelMapper().fromEntity(this);
}
