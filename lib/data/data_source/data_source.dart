import 'package:pet_app/data/models/pet_model.dart';

abstract class PetDataSourceRemote {
  Future<List<PetModel>> getPetDataSource();
}
