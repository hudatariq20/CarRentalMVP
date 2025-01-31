part of 'car_bloc.dart';

abstract class CarState extends Equatable {
  const CarState();
  @override
  List<Object?> get props => [];
}

class CarsLoading extends CarState {
  const CarsLoading();
  @override
  List<Object?> get props => [];
}

class CarsLoaded extends CarState {
  final List<Car> cars;

  const CarsLoaded(this.cars);

  @override
  List<Object?> get props => [cars];
}

class CarsError extends CarState {
  final String message;

  const CarsError(this.message);

  @override
  List<Object?> get props => [message];
}
