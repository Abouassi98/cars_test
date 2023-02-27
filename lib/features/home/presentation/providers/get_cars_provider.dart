import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/car.dart';
import '../../domain/use_case/get_car_uc.dart';

part 'get_cars_provider.g.dart';

@riverpod
Future<List<Car>> getCars(
  GetCarsRef ref,
) async {
  return await ref.watch(getCarUCProvider).call();
}
