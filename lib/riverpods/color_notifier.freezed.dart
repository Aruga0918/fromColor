// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'color_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ColorStateTearOff {
  const _$ColorStateTearOff();

  _ColorState call(
      {SelectedColors selectedColors = SelectedColors.initialColors,
      bool isGirl = true}) {
    return _ColorState(
      selectedColors: selectedColors,
      isGirl: isGirl,
    );
  }
}

/// @nodoc
const $ColorState = _$ColorStateTearOff();

/// @nodoc
mixin _$ColorState {
  SelectedColors get selectedColors => throw _privateConstructorUsedError;
  bool get isGirl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorStateCopyWith<ColorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorStateCopyWith<$Res> {
  factory $ColorStateCopyWith(
          ColorState value, $Res Function(ColorState) then) =
      _$ColorStateCopyWithImpl<$Res>;
  $Res call({SelectedColors selectedColors, bool isGirl});
}

/// @nodoc
class _$ColorStateCopyWithImpl<$Res> implements $ColorStateCopyWith<$Res> {
  _$ColorStateCopyWithImpl(this._value, this._then);

  final ColorState _value;
  // ignore: unused_field
  final $Res Function(ColorState) _then;

  @override
  $Res call({
    Object? selectedColors = freezed,
    Object? isGirl = freezed,
  }) {
    return _then(_value.copyWith(
      selectedColors: selectedColors == freezed
          ? _value.selectedColors
          : selectedColors // ignore: cast_nullable_to_non_nullable
              as SelectedColors,
      isGirl: isGirl == freezed
          ? _value.isGirl
          : isGirl // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ColorStateCopyWith<$Res> implements $ColorStateCopyWith<$Res> {
  factory _$ColorStateCopyWith(
          _ColorState value, $Res Function(_ColorState) then) =
      __$ColorStateCopyWithImpl<$Res>;
  @override
  $Res call({SelectedColors selectedColors, bool isGirl});
}

/// @nodoc
class __$ColorStateCopyWithImpl<$Res> extends _$ColorStateCopyWithImpl<$Res>
    implements _$ColorStateCopyWith<$Res> {
  __$ColorStateCopyWithImpl(
      _ColorState _value, $Res Function(_ColorState) _then)
      : super(_value, (v) => _then(v as _ColorState));

  @override
  _ColorState get _value => super._value as _ColorState;

  @override
  $Res call({
    Object? selectedColors = freezed,
    Object? isGirl = freezed,
  }) {
    return _then(_ColorState(
      selectedColors: selectedColors == freezed
          ? _value.selectedColors
          : selectedColors // ignore: cast_nullable_to_non_nullable
              as SelectedColors,
      isGirl: isGirl == freezed
          ? _value.isGirl
          : isGirl // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ColorState implements _ColorState {
  const _$_ColorState(
      {this.selectedColors = SelectedColors.initialColors, this.isGirl = true});

  @JsonKey(defaultValue: SelectedColors.initialColors)
  @override
  final SelectedColors selectedColors;
  @JsonKey(defaultValue: true)
  @override
  final bool isGirl;

  @override
  String toString() {
    return 'ColorState(selectedColors: $selectedColors, isGirl: $isGirl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorState &&
            (identical(other.selectedColors, selectedColors) ||
                const DeepCollectionEquality()
                    .equals(other.selectedColors, selectedColors)) &&
            (identical(other.isGirl, isGirl) ||
                const DeepCollectionEquality().equals(other.isGirl, isGirl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedColors) ^
      const DeepCollectionEquality().hash(isGirl);

  @JsonKey(ignore: true)
  @override
  _$ColorStateCopyWith<_ColorState> get copyWith =>
      __$ColorStateCopyWithImpl<_ColorState>(this, _$identity);
}

abstract class _ColorState implements ColorState {
  const factory _ColorState({SelectedColors selectedColors, bool isGirl}) =
      _$_ColorState;

  @override
  SelectedColors get selectedColors => throw _privateConstructorUsedError;
  @override
  bool get isGirl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ColorStateCopyWith<_ColorState> get copyWith =>
      throw _privateConstructorUsedError;
}
