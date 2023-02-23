// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarItems {
  @JsonKey(name: 'cars')
  List<Car> get cars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarItemsCopyWith<CarItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarItemsCopyWith<$Res> {
  factory $CarItemsCopyWith(CarItems value, $Res Function(CarItems) then) =
      _$CarItemsCopyWithImpl<$Res, CarItems>;
  @useResult
  $Res call({@JsonKey(name: 'cars') List<Car> cars});
}

/// @nodoc
class _$CarItemsCopyWithImpl<$Res, $Val extends CarItems>
    implements $CarItemsCopyWith<$Res> {
  _$CarItemsCopyWithImpl(this._value, this._then);

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
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarItemsCopyWith<$Res> implements $CarItemsCopyWith<$Res> {
  factory _$$_CarItemsCopyWith(
          _$_CarItems value, $Res Function(_$_CarItems) then) =
      __$$_CarItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'cars') List<Car> cars});
}

/// @nodoc
class __$$_CarItemsCopyWithImpl<$Res>
    extends _$CarItemsCopyWithImpl<$Res, _$_CarItems>
    implements _$$_CarItemsCopyWith<$Res> {
  __$$_CarItemsCopyWithImpl(
      _$_CarItems _value, $Res Function(_$_CarItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$_CarItems(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$_CarItems implements _CarItems {
  const _$_CarItems({@JsonKey(name: 'cars') required final List<Car> cars})
      : _cars = cars;

  final List<Car> _cars;
  @override
  @JsonKey(name: 'cars')
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarItems(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarItems &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarItemsCopyWith<_$_CarItems> get copyWith =>
      __$$_CarItemsCopyWithImpl<_$_CarItems>(this, _$identity);
}

abstract class _CarItems implements CarItems {
  const factory _CarItems(
      {@JsonKey(name: 'cars') required final List<Car> cars}) = _$_CarItems;

  @override
  @JsonKey(name: 'cars')
  List<Car> get cars;
  @override
  @JsonKey(ignore: true)
  _$$_CarItemsCopyWith<_$_CarItems> get copyWith =>
      throw _privateConstructorUsedError;
}
