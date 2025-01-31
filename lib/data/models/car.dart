class Car {
  final String? model;
  final double? distance;
  final double? fuelCapacity;
  final double? fuelPerHour;

  Car(
      {required this.model,
      required this.distance,
      required this.fuelCapacity,
      required this.fuelPerHour});

  factory Car.fromJson(Map<String, dynamic> json) {
    print(json);
    return Car(
        model: json['model'] ?? "Test",
        distance: ((json['distance'] as num) ?? 0.0).toDouble(),
        fuelCapacity: ((json['fuelCapacity'] as num) ?? 0.0).toDouble(),
        fuelPerHour: ((json['fuelPerHour'] as num) ?? 0.0).toDouble());
  }
}
