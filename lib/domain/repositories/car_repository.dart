import 'package:carrentalmvp/data/models/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
