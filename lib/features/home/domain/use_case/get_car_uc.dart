import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/use_cases/use_case_base.dart';

import '../../data/repos/get_car_repo.dart';

import '../entities/car.dart';
import '../repos/i_get_cars_repo.dart';

part 'get_car_uc.g.dart';

@Riverpod(keepAlive: true)
GetCarUC getCarUC(GetCarUCRef ref) {
  return GetCarUC(
    ref,
    authRepo: ref.watch(getCarRepoProvider),
  );
}

class GetCarUC implements UseCaseNoParamsBase<List<Car>> {
  GetCarUC(this.ref, {required this.authRepo});

  final GetCarUCRef ref;
  final IGetCarRepo authRepo;

  @override
  Future<List<Car>> call() async {
    return await authRepo.getCar();
  }
}
