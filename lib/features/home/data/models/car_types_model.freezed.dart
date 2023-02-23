// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarItemsModel _$CarItemsModelFromJson(Map<String, dynamic> json) {
  return _CarItemsModel.fromJson(json);
}

/// @nodoc
mixin _$CarItemsModel {
  @JsonKey(name: 'cars')
  List<CarModel> get cars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarItemsModelCopyWith<CarItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarItemsModelCopyWith<$Res> {
  factory $CarItemsModelCopyWith(
          CarItemsModel value, $Res Function(CarItemsModel) then) =
      _$CarItemsModelCopyWithImpl<$Res, CarItemsModel>;
  @useResult
  $Res call({@JsonKey(name: 'cars') List<CarModel> cars});
}

/// @nodoc
class _$CarItemsModelCopyWithImpl<$Res, $Val extends CarItemsModel>
    implements $CarItemsModelCopyWith<$Res> {
  _$CarItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarItemsModelCopyWith<$Res>
    implements $CarItemsModelCopyWith<$Res> {
  factory _$$_CarItemsModelCopyWith(
          _$_CarItemsModel value, $Res Function(_$_CarItemsModel) then) =
      __$$_CarItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'cars') List<CarModel> cars});
}

/// @nodoc
class __$$_CarItemsModelCopyWithImpl<$Res>
    extends _$CarItemsModelCopyWithImpl<$Res, _$_CarItemsModel>
    implements _$$_CarItemsModelCopyWith<$Res> {
  __$$_CarItemsModelCopyWithImpl(
      _$_CarItemsModel _value, $Res Function(_$_CarItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$_CarItemsModel(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_CarItemsModel extends _CarItemsModel {
  const _$_CarItemsModel(
      {@JsonKey(name: 'cars') required final List<CarModel> cars})
      : _cars = cars,
        super._();

  factory _$_CarItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarItemsModelFromJson(json);

  final List<CarModel> _cars;
  @override
  @JsonKey(name: 'cars')
  List<CarModel> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarItemsModel(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarItemsModel &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarItemsModelCopyWith<_$_CarItemsModel> get copyWith =>
      __$$_CarItemsModelCopyWithImpl<_$_CarItemsModel>(this, _$identity);
}

abstract class _CarItemsModel extends CarItemsModel {
  const factory _CarItemsModel(
          {@JsonKey(name: 'cars') required final List<CarModel> cars}) =
      _$_CarItemsModel;
  const _CarItemsModel._() : super._();

  factory _CarItemsModel.fromJson(Map<String, dynamic> json) =
      _$_CarItemsModel.fromJson;

  @override
  @JsonKey(name: 'cars')
  List<CarModel> get cars;
  @override
  @JsonKey(ignore: true)
  _$$_CarItemsModelCopyWith<_$_CarItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
