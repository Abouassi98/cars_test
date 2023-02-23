import '../../domain/entities/car.dart';
import 'car_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/car_types.dart';
part 'car_types_model.freezed.dart';
part 'car_types_model.g.dart';

@Freezed(toJson: false)
class CarItemsModel with _$CarItemsModel {
  const CarItemsModel._();

  const factory CarItemsModel(
          {@JsonKey(name: 'cars') required final List<CarModel> cars}) =
      _CarItemsModel;

  factory CarItemsModel.fromJson(Map<String, dynamic> json) =>
      _$CarItemsModelFromJson(json);

  factory CarItemsModel.fromEntity(CarItems car) {
    return CarItemsModel(
      cars:
          List<CarModel>.from(car.cars.map((doc) => CarModel.fromEntity(doc))),
    );
  }

  CarItems toEntity() {
    return CarItems(
      cars: List<Car>.from(cars.map((e) => e.toEntity())),
    );
  }
}
