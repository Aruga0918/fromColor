// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'root_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RootScreenStateTearOff {
  const _$RootScreenStateTearOff();

  _RootScreenState call({bool isFirstLaunch = false}) {
    return _RootScreenState(
      isFirstLaunch: isFirstLaunch,
    );
  }
}

/// @nodoc
const $RootScreenState = _$RootScreenStateTearOff();

/// @nodoc
mixin _$RootScreenState {
  bool get isFirstLaunch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootScreenStateCopyWith<RootScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootScreenStateCopyWith<$Res> {
  factory $RootScreenStateCopyWith(
          RootScreenState value, $Res Function(RootScreenState) then) =
      _$RootScreenStateCopyWithImpl<$Res>;
  $Res call({bool isFirstLaunch});
}

/// @nodoc
class _$RootScreenStateCopyWithImpl<$Res>
    implements $RootScreenStateCopyWith<$Res> {
  _$RootScreenStateCopyWithImpl(this._value, this._then);

  final RootScreenState _value;
  // ignore: unused_field
  final $Res Function(RootScreenState) _then;

  @override
  $Res call({
    Object? isFirstLaunch = freezed,
  }) {
    return _then(_value.copyWith(
      isFirstLaunch: isFirstLaunch == freezed
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RootScreenStateCopyWith<$Res>
    implements $RootScreenStateCopyWith<$Res> {
  factory _$RootScreenStateCopyWith(
          _RootScreenState value, $Res Function(_RootScreenState) then) =
      __$RootScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstLaunch});
}

/// @nodoc
class __$RootScreenStateCopyWithImpl<$Res>
    extends _$RootScreenStateCopyWithImpl<$Res>
    implements _$RootScreenStateCopyWith<$Res> {
  __$RootScreenStateCopyWithImpl(
      _RootScreenState _value, $Res Function(_RootScreenState) _then)
      : super(_value, (v) => _then(v as _RootScreenState));

  @override
  _RootScreenState get _value => super._value as _RootScreenState;

  @override
  $Res call({
    Object? isFirstLaunch = freezed,
  }) {
    return _then(_RootScreenState(
      isFirstLaunch: isFirstLaunch == freezed
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RootScreenState implements _RootScreenState {
  const _$_RootScreenState({this.isFirstLaunch = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isFirstLaunch;

  @override
  String toString() {
    return 'RootScreenState(isFirstLaunch: $isFirstLaunch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RootScreenState &&
            (identical(other.isFirstLaunch, isFirstLaunch) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstLaunch, isFirstLaunch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstLaunch);

  @JsonKey(ignore: true)
  @override
  _$RootScreenStateCopyWith<_RootScreenState> get copyWith =>
      __$RootScreenStateCopyWithImpl<_RootScreenState>(this, _$identity);
}

abstract class _RootScreenState implements RootScreenState {
  const factory _RootScreenState({bool isFirstLaunch}) = _$_RootScreenState;

  @override
  bool get isFirstLaunch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RootScreenStateCopyWith<_RootScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
