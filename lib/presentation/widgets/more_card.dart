import 'package:carrentalmvp/data/models/car.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  final Car car;
  const MoreCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
       color: Colors.black,
       borderRadius: BorderRadius.circular(10),
       boxShadow: [
        BoxShadow(
          color: Colors.black54,
          blurRadius: 8,

        )
       ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                car.model!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
              Row(
                children: [
                  const Icon(Icons.directions_car, size: 16,color: Colors.white,),
                  const SizedBox(width: 5,),
                  Text(' > ${car.distance} km', style: const TextStyle( fontSize: 16, color: Colors.white)),
                  const SizedBox(width: 10,),
                  const Icon(Icons.battery_0_bar_rounded, size: 16,color: Colors.white),
                  const SizedBox(width: 5,),
                  Text(' ${car.fuelCapacity}', style: const TextStyle( fontSize: 16, color: Colors.white))
                  

                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white,)
        ],
      ),
    );
  }
}
