part of 'car_bloc.dart';

abstract class CarsEvent extends Equatable {
  const CarsEvent();

  @override
  List<Object?> get props => [];
}

class LoadCars extends CarsEvent {
  const LoadCars();
  @override
  List<Object?> get props => [];
}
