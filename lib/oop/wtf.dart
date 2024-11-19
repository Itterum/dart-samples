typedef Point = (double x, double y);

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
