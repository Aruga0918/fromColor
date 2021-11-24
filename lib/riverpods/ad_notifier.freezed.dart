// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ad_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdStateTearOff {
  const _$AdStateTearOff();

  _AdState call({int adCount = 0, String adId = ""}) {
    return _AdState(
      adCount: adCount,
      adId: adId,
    );
  }
}

/// @nodoc
const $AdState = _$AdStateTearOff();

/// @nodoc
mixin _$AdState {
  int get adCount => throw _privateConstructorUsedError;
  String get adId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdStateCopyWith<AdState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateCopyWith<$Res> {
  factory $AdStateCopyWith(AdState value, $Res Function(AdState) then) =
      _$AdStateCopyWithImpl<$Res>;
  $Res call({int adCount, String adId});
}

/// @nodoc
class _$AdStateCopyWithImpl<$Res> implements $AdStateCopyWith<$Res> {
  _$AdStateCopyWithImpl(this._value, this._then);

  final AdState _value;
  // ignore: unused_field
  final $Res Function(AdState) _then;

  @override
  $Res call({
    Object? adCount = freezed,
    Object? adId = freezed,
  }) {
    return _then(_value.copyWith(
      adCount: adCount == freezed
          ? _value.adCount
          : adCount // ignore: cast_nullable_to_non_nullable
              as int,
      adId: adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AdStateCopyWith<$Res> implements $AdStateCopyWith<$Res> {
  factory _$AdStateCopyWith(_AdState value, $Res Function(_AdState) then) =
      __$AdStateCopyWithImpl<$Res>;
  @override
  $Res call({int adCount, String adId});
}

/// @nodoc
class __$AdStateCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements _$AdStateCopyWith<$Res> {
  __$AdStateCopyWithImpl(_AdState _value, $Res Function(_AdState) _then)
      : super(_value, (v) => _then(v as _AdState));

  @override
  _AdState get _value => super._value as _AdState;

  @override
  $Res call({
    Object? adCount = freezed,
    Object? adId = freezed,
  }) {
    return _then(_AdState(
      adCount: adCount == freezed
          ? _value.adCount
          : adCount // ignore: cast_nullable_to_non_nullable
              as int,
      adId: adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AdState implements _AdState {
  const _$_AdState({this.adCount = 0, this.adId = ""});

  @JsonKey(defaultValue: 0)
  @override
  final int adCount;
  @JsonKey(defaultValue: "")
  @override
  final String adId;

  @override
  String toString() {
    return 'AdState(adCount: $adCount, adId: $adId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdState &&
            (identical(other.adCount, adCount) ||
                const DeepCollectionEquality()
                    .equals(other.adCount, adCount)) &&
            (identical(other.adId, adId) ||
                const DeepCollectionEquality().equals(other.adId, adId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adCount) ^
      const DeepCollectionEquality().hash(adId);

  @JsonKey(ignore: true)
  @override
  _$AdStateCopyWith<_AdState> get copyWith =>
      __$AdStateCopyWithImpl<_AdState>(this, _$identity);
}

abstract class _AdState implements AdState {
  const factory _AdState({int adCount, String adId}) = _$_AdState;

  @override
  int get adCount => throw _privateConstructorUsedError;
  @override
  String get adId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdStateCopyWith<_AdState> get copyWith =>
      throw _privateConstructorUsedError;
}
