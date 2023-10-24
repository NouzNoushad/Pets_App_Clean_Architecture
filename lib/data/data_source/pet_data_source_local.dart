import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pet_app/core/utils/strings.dart';
import 'package:pet_app/data/data_source/data_source.dart';
import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/data/models/pet_model.dart';

class PetDataSourceLocalImpl extends PetDataSourceLocal {
  final Box<PetFavoriteModel> openBox = Hive.box(AppString.databaseName);

  @override
  Future<bool> addFavorite(PetFavoriteModel petModel) async {
    openBox.put(petModel.id, petModel);
    return true;
  }

  @override
  Future<List<PetFavoriteModel>> getFavorites() async {
    var favorites = openBox.values.toList();
    return favorites;
  }

  @override
  Future<bool> removeFavorite(String petId) async {
    openBox.delete(petId);
    return true;
  }
}
