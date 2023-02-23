import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required final String name,
    required final String price,
    required final String time,
    required final String year,
    required final String km,
    required final String avatarUrl,
    required final bool seen,
  }) = _Car;
}
