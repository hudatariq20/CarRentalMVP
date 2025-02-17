// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAW_9GOEQv8jy7oWeDXV-r7iEyEQ2Mz2hE',
    appId: '1:741958773426:web:b9f074ffa7c2821750b7ab',
    messagingSenderId: '741958773426',
    projectId: 'car-rental-336cc',
    authDomain: 'car-rental-336cc.firebaseapp.com',
    storageBucket: 'car-rental-336cc.firebasestorage.app',
    measurementId: 'G-2ZC8C53GVJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCesvB3Mjwth90XuvfDDtRkdzsXNq6B5RA',
    appId: '1:741958773426:android:6e3184527ac4f8af50b7ab',
    messagingSenderId: '741958773426',
    projectId: 'car-rental-336cc',
    storageBucket: 'car-rental-336cc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmFhRctEkTdVl0x12KpdAD2vbyZCgjh4o',
    appId: '1:741958773426:ios:e295ad8592d3b04150b7ab',
    messagingSenderId: '741958773426',
    projectId: 'car-rental-336cc',
    storageBucket: 'car-rental-336cc.firebasestorage.app',
    iosBundleId: 'com.example.carrentalmvp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmFhRctEkTdVl0x12KpdAD2vbyZCgjh4o',
    appId: '1:741958773426:ios:e295ad8592d3b04150b7ab',
    messagingSenderId: '741958773426',
    projectId: 'car-rental-336cc',
    storageBucket: 'car-rental-336cc.firebasestorage.app',
    iosBundleId: 'com.example.carrentalmvp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAW_9GOEQv8jy7oWeDXV-r7iEyEQ2Mz2hE',
    appId: '1:741958773426:web:f50f74de42396a6e50b7ab',
    messagingSenderId: '741958773426',
    projectId: 'car-rental-336cc',
    authDomain: 'car-rental-336cc.firebaseapp.com',
    storageBucket: 'car-rental-336cc.firebasestorage.app',
    measurementId: 'G-V7JTHC76HQ',
  );
}
