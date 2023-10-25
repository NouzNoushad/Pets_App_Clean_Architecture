import 'package:flutter/material.dart';
import 'package:pet_app/config/routes/route_constant.dart';
import 'package:pet_app/core/utils/colors.dart';
import 'package:pet_app/core/utils/strings.dart';
import 'package:pet_app/data/models/pet_model.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';
import 'package:pet_app/presentation/screens/favorite_pets.dart/favorite_pets.dart';
import 'package:pet_app/presentation/screens/pet_details/pet_details.dart';
import 'package:pet_app/presentation/screens/pets_home/pets_home.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.home:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstant.home),
            builder: (context) => const PetsHomeScreen());
      case RouteConstant.details:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstant.details),
            builder: (context) => PetDetailsScreen(
                  petModel: settings.arguments as PetEntity,
                ));
      case RouteConstant.favorite:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstant.favorite),
            builder: (context) => const FavoritePetsScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  backgroundColor: ColorPicker.backgroundColor,
                  body: Center(child: Text(AppString.pageNotFount)),
                ));
    }
  }
}
