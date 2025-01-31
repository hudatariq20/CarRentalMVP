import 'package:carrentalmvp/data/models/car.dart';
import 'package:carrentalmvp/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository _carRepository;

  GetCars(this._carRepository);

  Future<List<Car>> call() async{
    return await _carRepository.fetchCars();
  }
}



