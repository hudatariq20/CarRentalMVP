import 'package:carrentalmvp/data/models/car.dart';
import 'package:carrentalmvp/firebase_options.dart';
import 'package:carrentalmvp/injection_container.dart';
import 'package:carrentalmvp/presentation/bloc/carbloc/car_bloc.dart';
import 'package:carrentalmvp/presentation/pages/car_details_screen.dart';
import 'package:carrentalmvp/presentation/pages/car_list_screen.dart';
import 'package:carrentalmvp/presentation/pages/maps_details_screen.dart';
import 'package:carrentalmvp/presentation/pages/onboarding_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(const LoadCars()),
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: OnBoardingPage()),
    );
  }
}
