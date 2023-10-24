import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/config/themes/app_theme.dart';
import 'package:pet_app/domain/usecases/add_favorite_usecase.dart';
import 'package:pet_app/domain/usecases/get_favorite_usecase.dart';
import 'package:pet_app/domain/usecases/pet_usecase.dart';
import 'package:pet_app/domain/usecases/remove_favorite_usecase.dart';
import 'package:pet_app/presentation/bloc/favorite_bloc/favorite_bloc.dart';
import 'package:pet_app/presentation/bloc/pets_bloc/pets_bloc.dart';
import 'package:pet_app/service_locator/service_locator.dart' as di;

import 'config/routes/route_constant.dart';
import 'config/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PetsBloc(petUseCase: di.sl<PetUseCase>()),
        ),
        BlocProvider(
          create: (context) => FavoriteBloc(
            getFavoriteUseCase: di.sl<GetFavoriteUseCase>(),
            addFavoriteUseCase: di.sl<AddFavoriteUseCase>(),
            removeFavoriteUseCase: di.sl<RemoveFavoriteUseCase>(),
          ),
        ),
      ],
      child: MaterialApp(
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoute,
        initialRoute: RouteConstant.home,
      ),
    );
  }
}
