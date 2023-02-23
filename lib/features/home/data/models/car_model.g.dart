// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarModel _$$_CarModelFromJson(Map<String, dynamic> json) => _$_CarModel(
      name: json['name'] as String,
      price: json['price'] as String,
      time: json['time'] as String,
      year: json['year'] as String,
      km: json['km'] as String,
      avatarUrl: json['avatarUrl'] as String,
      seen: json['seen'] as bool,
    );

Map<String, dynamic> _$$_CarModelToJson(_$_CarModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'time': instance.time,
      'year': instance.year,
      'km': instance.km,
      'avatarUrl': instance.avatarUrl,
      'seen': instance.seen,
    };
