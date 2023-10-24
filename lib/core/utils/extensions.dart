import 'package:flutter/material.dart';
import 'package:pet_app/core/mapper/mapper.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';

import '../../data/models/pet_model.dart';

extension MediaQuerySize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension PetModelExt on PetModel {
  PetEntity get toEntity => PetModelMapper().toEntity(this);
}

extension PetEntityExt on PetEntity {
  PetModel get fromEntity => PetModelMapper().fromEntity(this);
}
