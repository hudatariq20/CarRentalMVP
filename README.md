# 🛵 Car Rental App - Flutter, Firebase, Bloc, Clean Architecture, Open Street Map

### Project Overview

This **Car Rental App** allows users to view a list of available vechicles fetched from **Firebase** and explore detailed car information. Users can also interact with a map page that shows car locations, and select pick-up and delivery points on a map using **OpenStreetMap**.

The app uses **BLoC** for handling state and business logic separately from the UI, ensuring maintainable and scalable code. The **Clean Architecture** pattern is followed to separate concerns between data, domain, and presentation layers.

### 📱 Features
* Firebase Integration: Fetch car details from Firebase Firestore to display relevant specs about the vehicle that is to be rented.
* BLoC Implementation: State management using the BLoC pattern, separating business logic from UI components. 
*  Vehicle Listing Page: Display a list of available cars fetched from Firebase.
*  Vehicle Information Page: Show detailed information about a selected car.
*  Map Page: Integrated OpenStreetMap to show car locations, as well as maps for pick-up and delivery points.
* Pick-Up and Delivery Functionality: Interactive map to select locations for pick-up and delivery.

## 🎨 App Screens
edit the screenshots here of the 3 screens.
Home page, 

## 🛠️ Tech Stack
**Flutter**: Cross-platform mobile app development framework.
**Firebase**: Real-time database to store and manage car details.
**BLoC**: Business Logic Component (BLoC) pattern for state management.
**OpenStreetMap (OSM)**: For displaying maps, car locations, and pick-up/delivery points.
**flutter_bloc**: Package for implementing the BLoC pattern in Flutter.
**flutter_map**: Package for integrating OpenStreetMap into the app.
**equatable**: For value comparison in BLoC events and states.
**get_it**: For dependency injection.


### Getting Started

## Installation

**1. Clone the Repository:**  

```sh
  git clone https://github.com/hudatariq20/CarRentalMVP.git
  cd flutter-car-rental-app
```

**2. Install Dependencies:**

```sh
flutter pub get
```

**3. Firebase Setup:**
* Create a Firebase project at **Firebase Console**.
* Enable Firebase Realtime Database or Firestore.
* Add Firebase SDK configuration files (google-services.json for Android, GoogleService-Info.plist for iOS) to your project.
* Add Firebase dependencies in pubspec.yaml (e.g., firebase_core, cloud_firestore).

**4. Run the app:**

```sh
flutter run
```

## Folder Structure
This project follows Clean Architecture, organizing code into different layers for maintainability and scalability.

```

├── data
│   ├── datasources
│   │   └── firebase_datasource.dart
│   ├── models
│   │   └── car.dart
│   └── respositories
│       └── car_repository_impl.dart
├── domain
│   ├── entities
│   ├── repositories
│   │   └── car_repository.dart
│   └── usecases
│       └── get_cars.dart
├── firebase_options.dart
├── injection_container.dart
├── main.dart
└── presentation
    ├── bloc
    │   └── carbloc
    │       ├── car_bloc.dart
    │       ├── car_event.dart
    │       └── car_state.dart
    ├── pages
    │   ├── car_details_screen.dart
    │   ├── car_list_screen.dart
    │   ├── maps_details_screen.dart
    │   └── onboarding_page.dart
    └── widgets
        ├── car_card.dart
        └── more_card.dart
```

## Usage
* Launch the app: Run the app on your emulator or device using flutter run.
* Navigate:
 -On the home screen, view the car list fetched from Firebase.
-Tap on a car to view its details.
-Open the map page to view car locations and select pick-up and delivery locations on the map.

## Contributions
Contributions are welcome! Please fork the repository and create a pull request with your enhancements or fixes.

## Contact
For any inquiries or issues, please contact huda.tariq94@gmail.com



