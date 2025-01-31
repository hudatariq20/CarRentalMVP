import 'package:carrentalmvp/data/models/car.dart';
import 'package:carrentalmvp/presentation/pages/car_details_screen.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CarDetailScreen(car: car)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/car_image.png",
              height: 120,
            ),
            Text(
              car.model!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/gps.png'),
                        Text('${car.distance!.toStringAsFixed(0)}km')
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/pump.png'),
                        Text('${car.fuelCapacity!.toStringAsFixed(0)}L')
                      ],
                    ),
                  ],
                ),
                Text('\$${car.fuelPerHour!.toStringAsFixed(0)}/h'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
