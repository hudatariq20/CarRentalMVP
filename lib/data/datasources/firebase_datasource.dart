import 'package:carrentalmvp/data/models/car.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFireStoreSource {
  final FirebaseFirestore firebaseFireStore;

  FirebaseFireStoreSource({required this.firebaseFireStore});

  Future<List<Car>> getCars() async {
    var snapshot = await firebaseFireStore.collection('cars').get();
    return snapshot.docs.map((doc) => Car.fromJson(doc.data())).toList();
  }
}
