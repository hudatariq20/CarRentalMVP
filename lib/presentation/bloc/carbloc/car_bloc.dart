import 'package:bloc/bloc.dart';
import 'package:carrentalmvp/domain/usecases/get_cars.dart';
import 'package:equatable/equatable.dart';
import 'package:carrentalmvp/data/models/car.dart';

part 'car_event.dart';
part 'car_state.dart';

class CarBloc extends Bloc<CarsEvent, CarState> {
  final GetCars getCars;
  CarBloc({required this.getCars}) : super(CarsLoading()) {
    on<LoadCars>(_LoadCar);
  }

  void _LoadCar(LoadCars event, Emitter<CarState> emit) async {
    try {
      final cars = await getCars.call();
      emit(CarsLoaded(cars));
    } catch (e) {
      emit(CarsError(e.toString()));
    }
  }
}
