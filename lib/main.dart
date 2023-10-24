import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pet_app/core/utils/strings.dart';
import 'package:pet_app/data/models/pet_favorite_model.dart';
import 'package:pet_app/service_locator/service_locator.dart' as di;

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PetFavoriteModelAdapter());
  await Hive.openBox<PetFavoriteModel>(AppString.databaseName);
  await di.initServiceLocator();
  runApp(const MyApp());
}
