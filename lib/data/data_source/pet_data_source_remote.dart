import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pet_app/core/api/api_consumer.dart';
import 'package:pet_app/core/api/end_points.dart';
import 'package:pet_app/data/data_source/data_source.dart';
import 'package:pet_app/data/models/pet_image_model.dart';
import 'package:pet_app/data/models/pet_model.dart';

class PetDataSourceRemoteImpl extends PetDataSourceRemote {
  ApiConsumer apiConsumer;
  PetDataSourceRemoteImpl({required this.apiConsumer});

  @override
  Future<List<PetModel>> getPetDataSource() async {
    String url = Endpoints.breedsEndPoint();

    final response = await apiConsumer.getRequest(url);
    List<PetModel> petModel = List<PetModel>.from(
        json.decode(response).map((x) => PetModel.fromJson(x)));

    for (int i = 0; i < petModel.length; i++) {
      petModel[i].image =
          await getPetImageDataSource(petModel[i].id.toString());
    }
    debugPrint('///////////////// response: ${petModel.length}');
    return petModel;
  }

  @override
  Future<String?> getPetImageDataSource(String breedId) async {
    String url = Endpoints.imageEndpoint(breedId);
    final response = await apiConsumer.getRequest(url);
    List<PetImageModel> petImageModel = List<PetImageModel>.from(
        json.decode(response).map((x) => PetImageModel.fromJson(x)));
    debugPrint('///////////////// image response: $response');
    return petImageModel.isNotEmpty ? petImageModel[0].url : "";
  }
}
