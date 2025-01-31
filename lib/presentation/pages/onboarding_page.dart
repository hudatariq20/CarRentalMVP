import 'package:carrentalmvp/presentation/pages/car_list_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/onboarding.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Premium cars \nEnjoy the luxury',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Premium and prestige car daily rental\nExperience the thrill at lower price',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 320,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => CarListScreen()),
                                (route) => false);
                            /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => CarListScreen()))); */
                          },
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white),
                          child: Text(
                            'Let\'s Go',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
