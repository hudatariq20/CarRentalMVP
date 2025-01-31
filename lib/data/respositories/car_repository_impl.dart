import 'package:carrentalmvp/data/datasources/firebase_datasource.dart';
import 'package:carrentalmvp/data/models/car.dart';
import 'package:carrentalmvp/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseFireStoreSource firebaseFireStoreSource;

  CarRepositoryImpl(this.firebaseFireStoreSource);

  @override
  Future<List<Car>> fetchCars() {
    return firebaseFireStoreSource.getCars();
  }
}
