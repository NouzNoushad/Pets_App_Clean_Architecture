import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:pet_app/core/api/api_consumer.dart';
import 'package:pet_app/core/api/base_client.dart';
import 'package:pet_app/data/data_source/pet_data_source_local.dart';
import 'package:pet_app/data/data_source/pet_data_source_remote.dart';
import 'package:pet_app/data/repositories_impl/pet_repository_impl.dart';
import 'package:pet_app/domain/usecases/add_favorite_usecase.dart';
import 'package:pet_app/domain/usecases/get_favorite_usecase.dart';
import 'package:pet_app/domain/usecases/pet_usecase.dart';
import 'package:pet_app/domain/usecases/remove_favorite_usecase.dart';
import 'package:pet_app/presentation/bloc/favorite_bloc/favorite_bloc.dart';
import 'package:pet_app/presentation/bloc/pets_bloc/pets_bloc.dart';

import '../data/data_source/data_source.dart';
import '../domain/repositories/pet_repository.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  // bloc
  sl.registerFactory<PetsBloc>(() => PetsBloc(petUseCase: sl()));
  sl.registerFactory<FavoriteBloc>(() => FavoriteBloc(
      getFavoriteUseCase: sl(),
      addFavoriteUseCase: sl(),
      removeFavoriteUseCase: sl()));

  // use cases
  sl.registerLazySingleton<PetUseCase>(() => PetUseCase(petRepository: sl()));
  sl.registerLazySingleton<GetFavoriteUseCase>(
      () => GetFavoriteUseCase(petRepository: sl()));
  sl.registerLazySingleton<AddFavoriteUseCase>(
      () => AddFavoriteUseCase(petRepository: sl()));
  sl.registerLazySingleton<RemoveFavoriteUseCase>(
      () => RemoveFavoriteUseCase(petRepository: sl()));

  // repository
  sl.registerLazySingleton<PetRepository>(() =>
      PetRepositoryImpl(petDataSourceRemote: sl(), petDataSourceLocal: sl()));

  // data source
  sl.registerLazySingleton<PetDataSourceRemote>(
      () => PetDataSourceRemoteImpl(apiConsumer: sl()));
  sl.registerLazySingleton<PetDataSourceLocal>(() => PetDataSourceLocalImpl());

  // core
  sl.registerLazySingleton<ApiConsumer>(() => ApiBaseClient(baseClient: sl()));

  // http
  sl.registerLazySingleton(() => Client());
}
