// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$CarModel {
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get km => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  bool get seen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarModelCopyWith<CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelCopyWith<$Res> {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) then) =
      _$CarModelCopyWithImpl<$Res, CarModel>;
  @useResult
  $Res call(
      {String name,
      String price,
      String time,
      String year,
      String km,
      String avatarUrl,
      bool seen});
}

/// @nodoc
class _$CarModelCopyWithImpl<$Res, $Val extends CarModel>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? time = null,
    Object? year = null,
    Object? km = null,
    Object? avatarUrl = null,
    Object? seen = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      km: null == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      seen: null == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarModelCopyWith<$Res> implements $CarModelCopyWith<$Res> {
  factory _$$_CarModelCopyWith(
          _$_CarModel value, $Res Function(_$_CarModel) then) =
      __$$_CarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String price,
      String time,
      String year,
      String km,
      String avatarUrl,
      bool seen});
}

/// @nodoc
class __$$_CarModelCopyWithImpl<$Res>
    extends _$CarModelCopyWithImpl<$Res, _$_CarModel>
    implements _$$_CarModelCopyWith<$Res> {
  __$$_CarModelCopyWithImpl(
      _$_CarModel _value, $Res Function(_$_CarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? time = null,
    Object? year = null,
    Object? km = null,
    Object? avatarUrl = null,
    Object? seen = null,
  }) {
    return _then(_$_CarModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      km: null == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      seen: null == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarModel extends _CarModel {
  const _$_CarModel(
      {required this.name,
      required this.price,
      required this.time,
      required this.year,
      required this.km,
      required this.avatarUrl,
      required this.seen})
      : super._();

  factory _$_CarModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarModelFromJson(json);

  @override
  final String name;
  @override
  final String price;
  @override
  final String time;
  @override
  final String year;
  @override
  final String km;
  @override
  final String avatarUrl;
  @override
  final bool seen;

  @override
  String toString() {
    return 'CarModel(name: $name, price: $price, time: $time, year: $year, km: $km, avatarUrl: $avatarUrl, seen: $seen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.km, km) || other.km == km) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.seen, seen) || other.seen == seen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, price, time, year, km, avatarUrl, seen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      __$$_CarModelCopyWithImpl<_$_CarModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarModelToJson(
      this,
    );
  }
}

abstract class _CarModel extends CarModel {
  const factory _CarModel(
      {required final String name,
      required final String price,
      required final String time,
      required final String year,
      required final String km,
      required final String avatarUrl,
      required final bool seen}) = _$_CarModel;
  const _CarModel._() : super._();

  factory _CarModel.fromJson(Map<String, dynamic> json) = _$_CarModel.fromJson;

  @override
  String get name;
  @override
  String get price;
  @override
  String get time;
  @override
  String get year;
  @override
  String get km;
  @override
  String get avatarUrl;
  @override
  bool get seen;
  @override
  @JsonKey(ignore: true)
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
