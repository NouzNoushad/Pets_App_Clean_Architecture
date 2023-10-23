import 'package:flutter/material.dart';
import 'package:pet_app/config/routes/route_constant.dart';
import 'package:pet_app/core/utils/colors.dart';
import 'package:pet_app/presentation/screens/pets_home/pets_home.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.home:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstant.home),
            builder: (context) => const PetsHomeScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  backgroundColor: ColorPicker.backgroundColor,
                  body: Center(child: Text('Page Not Found')),
                ));
    }
  }
}
