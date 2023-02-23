import 'package:freezed_annotation/freezed_annotation.dart';

import 'car.dart';

part 'car_types.freezed.dart';

@freezed
class CarItems with _$CarItems {
  const factory CarItems({
    @JsonKey(name: 'cars') required final List<Car> cars,
  }) = _CarItems;
}
