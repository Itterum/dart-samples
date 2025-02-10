import 'dart:convert';

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  Point copyWith({double? x, double? y}) {
    return Point(
      x ?? this.x,
      y ?? this.y,
    );
  }

  Map<String, double> toJson() {
    return {'x': x, 'y': y};
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}

class Coordinates {
  Point coordinates;

  Coordinates(this.coordinates);

  void updateCoordinates(Point newCoordinates) {
    coordinates = newCoordinates;
  }

  @override
  String toString() {
    return coordinates.toString();
  }
}

abstract class AbstractVehicle {
  late String name;
  late String color;
  late double speed;
  late Coordinates coordinates;

  String move(Point point);
  String getCoordinates();
}

class BaseVehicle implements AbstractVehicle {
  @override
  late String name;

  @override
  late String color;

  @override
  late double speed;

  @override
  late Coordinates coordinates;

  BaseVehicle(this.name, this.color, this.speed, this.coordinates);

  @override
  String move(Point point) {
    coordinates.updateCoordinates(point);
    return getCoordinates();
  }

  @override
  String getCoordinates() {
    return coordinates.toString();
  }
}

/**
 * 
 * use example
 * 
  var point = Point(34, 25);
  var carCoordinates = Coordinates(point);
  
  BaseVehicle toyota = BaseVehicle('Toyota', 'red', 110, carCoordinates);

  print(toyota.name);

  print(toyota.getCoordinates());

  print(toyota.move(Point(54, 32)));
 */
