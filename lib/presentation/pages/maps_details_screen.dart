import 'package:carrentalmvp/data/models/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapsDetailScreen extends StatelessWidget {
  final Car car;
  const MapsDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(center: LatLng(51, -0.09), zoom: 13),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            )
          ],
        ),
        Positioned(left: 0, right: 0, bottom: 0, child: CarDetailsCard(car)),
      ]),
    );
  }
}

Widget CarDetailsCard(car) {
  return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, blurRadius: 0, spreadRadius: 3.5)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${car.model}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.directions_car,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ' > ${car.distance} KM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.battery_full,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${car.fuelCapacity.toString()}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  )
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Features',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    featureIcons(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${car.fuelCapacity}/h',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Book Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ))
                      ],
                    )
                  ],
                ),
              )),
        Positioned(
          top: 50,
          right: 30,
          child: Image.asset('assets/white_car.png'))
        ],
      ));
}

Widget featureIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      featureIcon(Icons.local_gas_station, 'Diesel', 'Common Rail'),
      featureIcon(Icons.speed, 'Accerelation', '0-100km/s'),
      featureIcon(Icons.ac_unit, 'Cold', 'Temp Control'),
    ],
  );
}

Widget featureIcon(
  IconData icon,
  String title,
  String subtitle,
) {
  return Container(
    height: 100,
    width: 100,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1)),
    child: Column(
      children: [
        Icon(
          icon,
          size: 28,
        ),
        Text(title),
        Text(
          subtitle,
          style: const TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    ),
  );
}
