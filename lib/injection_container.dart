import 'package:carrentalmvp/data/datasources/firebase_datasource.dart';
import 'package:carrentalmvp/data/respositories/car_repository_impl.dart';
import 'package:carrentalmvp/domain/repositories/car_repository.dart';
import 'package:carrentalmvp/domain/usecases/get_cars.dart';
import 'package:carrentalmvp/presentation/bloc/carbloc/car_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initInjection() {
  try {
    getIt.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
    getIt.registerLazySingleton<FirebaseFireStoreSource>(() =>
        FirebaseFireStoreSource(firebaseFireStore: getIt<FirebaseFirestore>()));
    getIt.registerLazySingleton<CarRepository>(
        () => CarRepositoryImpl(getIt<FirebaseFireStoreSource>()));
    getIt.registerLazySingleton<GetCars>(() => GetCars(getIt<CarRepository>()));
    getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));
  } catch (e) {
    throw e;
  }
}

