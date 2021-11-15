// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'upload_data_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadDataStateTearOff {
  const _$UploadDataStateTearOff();

  _UploadDataState call(
      {String localImagePath = "", Color itemColorValue = Colors.transparent}) {
    return _UploadDataState(
      localImagePath: localImagePath,
      itemColorValue: itemColorValue,
    );
  }
}

/// @nodoc
const $UploadDataState = _$UploadDataStateTearOff();

/// @nodoc
mixin _$UploadDataState {
  String get localImagePath => throw _privateConstructorUsedError;
  Color get itemColorValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadDataStateCopyWith<UploadDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDataStateCopyWith<$Res> {
  factory $UploadDataStateCopyWith(
          UploadDataState value, $Res Function(UploadDataState) then) =
      _$UploadDataStateCopyWithImpl<$Res>;
  $Res call({String localImagePath, Color itemColorValue});
}

/// @nodoc
class _$UploadDataStateCopyWithImpl<$Res>
    implements $UploadDataStateCopyWith<$Res> {
  _$UploadDataStateCopyWithImpl(this._value, this._then);

  final UploadDataState _value;
  // ignore: unused_field
  final $Res Function(UploadDataState) _then;

  @override
  $Res call({
    Object? localImagePath = freezed,
    Object? itemColorValue = freezed,
  }) {
    return _then(_value.copyWith(
      localImagePath: localImagePath == freezed
          ? _value.localImagePath
          : localImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      itemColorValue: itemColorValue == freezed
          ? _value.itemColorValue
          : itemColorValue // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$UploadDataStateCopyWith<$Res>
    implements $UploadDataStateCopyWith<$Res> {
  factory _$UploadDataStateCopyWith(
          _UploadDataState value, $Res Function(_UploadDataState) then) =
      __$UploadDataStateCopyWithImpl<$Res>;
  @override
  $Res call({String localImagePath, Color itemColorValue});
}

/// @nodoc
class __$UploadDataStateCopyWithImpl<$Res>
    extends _$UploadDataStateCopyWithImpl<$Res>
    implements _$UploadDataStateCopyWith<$Res> {
  __$UploadDataStateCopyWithImpl(
      _UploadDataState _value, $Res Function(_UploadDataState) _then)
      : super(_value, (v) => _then(v as _UploadDataState));

  @override
  _UploadDataState get _value => super._value as _UploadDataState;

  @override
  $Res call({
    Object? localImagePath = freezed,
    Object? itemColorValue = freezed,
  }) {
    return _then(_UploadDataState(
      localImagePath: localImagePath == freezed
          ? _value.localImagePath
          : localImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      itemColorValue: itemColorValue == freezed
          ? _value.itemColorValue
          : itemColorValue // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_UploadDataState implements _UploadDataState {
  const _$_UploadDataState(
      {this.localImagePath = "", this.itemColorValue = Colors.transparent});

  @JsonKey(defaultValue: "")
  @override
  final String localImagePath;
  @JsonKey(defaultValue: Colors.transparent)
  @override
  final Color itemColorValue;

  @override
  String toString() {
    return 'UploadDataState(localImagePath: $localImagePath, itemColorValue: $itemColorValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadDataState &&
            (identical(other.localImagePath, localImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.localImagePath, localImagePath)) &&
            (identical(other.itemColorValue, itemColorValue) ||
                const DeepCollectionEquality()
                    .equals(other.itemColorValue, itemColorValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(localImagePath) ^
      const DeepCollectionEquality().hash(itemColorValue);

  @JsonKey(ignore: true)
  @override
  _$UploadDataStateCopyWith<_UploadDataState> get copyWith =>
      __$UploadDataStateCopyWithImpl<_UploadDataState>(this, _$identity);
}

abstract class _UploadDataState implements UploadDataState {
  const factory _UploadDataState(
      {String localImagePath, Color itemColorValue}) = _$_UploadDataState;

  @override
  String get localImagePath => throw _privateConstructorUsedError;
  @override
  Color get itemColorValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UploadDataStateCopyWith<_UploadDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
