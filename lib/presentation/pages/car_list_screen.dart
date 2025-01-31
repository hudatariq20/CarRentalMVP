import 'package:carrentalmvp/presentation/bloc/carbloc/car_bloc.dart';
import 'package:carrentalmvp/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CarListScreen extends StatefulWidget {
  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  // CarListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CarsLoaded) {
            return ListView.builder(
                itemCount: state.cars.length,
                itemBuilder: ((context, index) {
                  return CarCard(car: state.cars[index]);
                }));
          } else if (state is CarsError) {
            return Center(
              child: Text('error: ${state.message}'),
            );
          }
          return Container();
        },
      ),
    );
  }
}
