import 'package:carrentalmvp/data/models/car.dart';
import 'package:carrentalmvp/presentation/pages/maps_details_screen.dart';
import 'package:carrentalmvp/presentation/widgets/car_card.dart';
import 'package:carrentalmvp/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatefulWidget {
  final Car car;
  const CarDetailScreen({super.key, required this.car});

  @override
  State<CarDetailScreen> createState() => _CarDetailScreenState();
}

class _CarDetailScreenState extends State<CarDetailScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    //animation controller
    //initialize the controller.. with duration
    _animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    //initialize the animation with tween animation and insert the controller too
    _animation =
        Tween<double>(begin: 1.0, end: 1.5).animate(_animationController!)
          ..addListener(() {
            setState(() {});
          });
    //execute the animation
    _animationController!.forward();

    super.initState();
  }

  @override
  void dispose() {
    //dispose the animation
    _animationController!.forward();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text('Information')],
        ),
      ),
      body: Column(
        children: [
          CarCard(
              car: Car(
                  model: widget.car.model,
                  distance: widget.car.distance,
                  fuelCapacity: widget.car.fuelCapacity,
                  fuelPerHour: widget.car.fuelPerHour)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ]),
                    child: const Column(children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/user.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Jane Cooper',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$4,253',
                        style: TextStyle(color: Colors.grey),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MapsDetailScreen(car: widget.car)));
                    },
                    child: Container(
                      height: 170,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ],
                        /*image: DecorationImage(
                            image: AssetImage('assets/maps.png'),
                            fit: BoxFit.cover),*/
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        //transform.scale for animation value..
                        child: Transform.scale(
                          scale: _animation!.value,
                          alignment: Alignment.center,
                          child: Image.asset('assets/maps.png', fit: BoxFit.cover,),
                        ),
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                MoreCard(
                    car: Car(
                        model: widget.car.model! + "-1",
                        distance: widget.car.distance! + 100,
                        fuelCapacity: widget.car.fuelCapacity! + 100,
                        fuelPerHour: widget.car.fuelPerHour! + 100)),
                const SizedBox(
                  height: 5,
                ),
                MoreCard(
                    car: Car(
                        model: widget.car.model! + "-2",
                        distance: widget.car.distance! + 200,
                        fuelCapacity: widget.car.fuelCapacity! + 200,
                        fuelPerHour: widget.car.fuelPerHour! + 200)),
                const SizedBox(
                  height: 5,
                ),
                MoreCard(
                    car: Car(
                        model: widget.car.model! + "-3",
                        distance: widget.car.distance! + 300,
                        fuelCapacity: widget.car.fuelCapacity! + 300,
                        fuelPerHour: widget.car.fuelPerHour! + 200))
              ],
            ),
          )
        ],
      ),
    );
  }
}
