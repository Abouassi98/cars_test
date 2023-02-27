import '../entities/car.dart';

abstract class IGetCarRepo {
  Future<List<Car>> getCar();
}
