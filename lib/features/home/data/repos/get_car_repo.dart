import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/car.dart';
import '../../domain/repos/i_get_cars_repo.dart';
import '../data_sources/get_car_local_data_source.dart';

part 'get_car_repo.g.dart';

@Riverpod(keepAlive: true)
IGetCarRepo getCarRepo(GetCarRepoRef ref) {
  return GetCarRepo(
    localDataSource: ref.watch(getCarLocalDataSourceProvider),
  );
}

class GetCarRepo implements IGetCarRepo {
  GetCarRepo({
    required this.localDataSource,
  });

  final IGetCarLocalDataSource localDataSource;

  @override
  Future<List<Car>> getCar() async {
    final user = await localDataSource.getCar();

    return List<Car>.from(user.cars.map((e) => e.toEntity()));
  }
}
