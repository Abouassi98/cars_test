
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


import '../models/car_types_model.dart';

part 'get_car_local_data_source.g.dart';

abstract class IGetCarLocalDataSource {
  /// Gets the cached data which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  Future<CarItemsModel> getCar();
}

@Riverpod(keepAlive: true)
IGetCarLocalDataSource getCarLocalDataSource(GetCarLocalDataSourceRef ref) {
  return GetCarLocalDataSource();
}

class GetCarLocalDataSource implements IGetCarLocalDataSource {
  GetCarLocalDataSource();

  @override
  Future<CarItemsModel> getCar() async {
    String response = await rootBundle.loadString('assets/json/sample.json');

    return CarItemsModel.fromJson(json.decode(response));
  }

  Future loadString() async {
    return await rootBundle.loadString('assets/json/sample.json');
  }
}
