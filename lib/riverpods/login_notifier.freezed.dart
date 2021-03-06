// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {bool duringLogin = false,
      bool isLogin = false,
      bool isFirstLaunch = false}) {
    return _LoginState(
      duringLogin: duringLogin,
      isLogin: isLogin,
      isFirstLaunch: isFirstLaunch,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  bool get duringLogin => throw _privateConstructorUsedError;
  bool get isLogin => throw _privateConstructorUsedError;
  bool get isFirstLaunch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({bool duringLogin, bool isLogin, bool isFirstLaunch});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? duringLogin = freezed,
    Object? isLogin = freezed,
    Object? isFirstLaunch = freezed,
  }) {
    return _then(_value.copyWith(
      duringLogin: duringLogin == freezed
          ? _value.duringLogin
          : duringLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstLaunch: isFirstLaunch == freezed
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({bool duringLogin, bool isLogin, bool isFirstLaunch});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? duringLogin = freezed,
    Object? isLogin = freezed,
    Object? isFirstLaunch = freezed,
  }) {
    return _then(_LoginState(
      duringLogin: duringLogin == freezed
          ? _value.duringLogin
          : duringLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstLaunch: isFirstLaunch == freezed
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.duringLogin = false,
      this.isLogin = false,
      this.isFirstLaunch = false});

  @JsonKey(defaultValue: false)
  @override
  final bool duringLogin;
  @JsonKey(defaultValue: false)
  @override
  final bool isLogin;
  @JsonKey(defaultValue: false)
  @override
  final bool isFirstLaunch;

  @override
  String toString() {
    return 'LoginState(duringLogin: $duringLogin, isLogin: $isLogin, isFirstLaunch: $isFirstLaunch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.duringLogin, duringLogin) ||
                const DeepCollectionEquality()
                    .equals(other.duringLogin, duringLogin)) &&
            (identical(other.isLogin, isLogin) ||
                const DeepCollectionEquality()
                    .equals(other.isLogin, isLogin)) &&
            (identical(other.isFirstLaunch, isFirstLaunch) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstLaunch, isFirstLaunch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duringLogin) ^
      const DeepCollectionEquality().hash(isLogin) ^
      const DeepCollectionEquality().hash(isFirstLaunch);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {bool duringLogin, bool isLogin, bool isFirstLaunch}) = _$_LoginState;

  @override
  bool get duringLogin => throw _privateConstructorUsedError;
  @override
  bool get isLogin => throw _privateConstructorUsedError;
  @override
  bool get isFirstLaunch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
