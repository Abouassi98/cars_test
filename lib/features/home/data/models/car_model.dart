import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/car.dart';
part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
class CarModel with _$CarModel {
  const CarModel._();

  const factory CarModel({
    required final String name,
    required final String price,
    required final String time,
    required final String year,
    required final String km,
    required final String avatarUrl,
    required final bool seen,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  factory CarModel.fromEntity(Car car) {
    return CarModel(
      name: car.name,
      avatarUrl: car.avatarUrl,
      km: car.km,
      price: car.price,
      seen: car.seen,
      time: car.time,
      year: car.year,
    );
  }
  Car toEntity() {
    return Car(
        avatarUrl: avatarUrl,
        km: km,
        name: name,
        price: price,
        seen: seen,
        time: time,
        year: year);
  }
}
