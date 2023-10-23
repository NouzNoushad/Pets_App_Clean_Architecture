import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pet_app/core/api/api_consumer.dart';
import 'package:pet_app/core/api/end_points.dart';
import 'package:pet_app/data/data_source/data_source.dart';
import 'package:pet_app/data/models/pet_model.dart';

class PetDataSourceRemoteImpl extends PetDataSourceRemote {
  ApiConsumer apiConsumer;
  PetDataSourceRemoteImpl({required this.apiConsumer});

  @override
  Future<List<PetModel>> getPetDataSource() async {
    String url = '$baseUrl/${Endpoints.breeds}';

    final response = await apiConsumer.getRequest(url);
    List<PetModel> petModel = List<PetModel>.from(json.decode(response).map((x) => PetModel.fromJson(x)));
    debugPrint('///////////////// response: $response');
    return petModel;
  }
}
