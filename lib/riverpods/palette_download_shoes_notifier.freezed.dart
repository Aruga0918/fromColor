// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'palette_download_shoes_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaletteDownloadShoesStateTearOff {
  const _$PaletteDownloadShoesStateTearOff();

  _PaletteDownloadShoesState call(
      {List<DownloadData> colorDownloadDataList = const []}) {
    return _PaletteDownloadShoesState(
      colorDownloadDataList: colorDownloadDataList,
    );
  }
}

/// @nodoc
const $PaletteDownloadShoesState = _$PaletteDownloadShoesStateTearOff();

/// @nodoc
mixin _$PaletteDownloadShoesState {
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteDownloadShoesStateCopyWith<PaletteDownloadShoesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteDownloadShoesStateCopyWith<$Res> {
  factory $PaletteDownloadShoesStateCopyWith(PaletteDownloadShoesState value,
          $Res Function(PaletteDownloadShoesState) then) =
      _$PaletteDownloadShoesStateCopyWithImpl<$Res>;
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class _$PaletteDownloadShoesStateCopyWithImpl<$Res>
    implements $PaletteDownloadShoesStateCopyWith<$Res> {
  _$PaletteDownloadShoesStateCopyWithImpl(this._value, this._then);

  final PaletteDownloadShoesState _value;
  // ignore: unused_field
  final $Res Function(PaletteDownloadShoesState) _then;

  @override
  $Res call({
    Object? colorDownloadDataList = freezed,
  }) {
    return _then(_value.copyWith(
      colorDownloadDataList: colorDownloadDataList == freezed
          ? _value.colorDownloadDataList
          : colorDownloadDataList // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
    ));
  }
}

/// @nodoc
abstract class _$PaletteDownloadShoesStateCopyWith<$Res>
    implements $PaletteDownloadShoesStateCopyWith<$Res> {
  factory _$PaletteDownloadShoesStateCopyWith(_PaletteDownloadShoesState value,
          $Res Function(_PaletteDownloadShoesState) then) =
      __$PaletteDownloadShoesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class __$PaletteDownloadShoesStateCopyWithImpl<$Res>
    extends _$PaletteDownloadShoesStateCopyWithImpl<$Res>
    implements _$PaletteDownloadShoesStateCopyWith<$Res> {
  __$PaletteDownloadShoesStateCopyWithImpl(_PaletteDownloadShoesState _value,
      $Res Function(_PaletteDownloadShoesState) _then)
      : super(_value, (v) => _then(v as _PaletteDownloadShoesState));

  @override
  _PaletteDownloadShoesState get _value =>
      super._value as _PaletteDownloadShoesState;

  @override
  $Res call({
    Object? colorDownloadDataList = freezed,
  }) {
    return _then(_PaletteDownloadShoesState(
      colorDownloadDataList: colorDownloadDataList == freezed
          ? _value.colorDownloadDataList
          : colorDownloadDataList // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
    ));
  }
}

/// @nodoc

class _$_PaletteDownloadShoesState implements _PaletteDownloadShoesState {
  const _$_PaletteDownloadShoesState({this.colorDownloadDataList = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<DownloadData> colorDownloadDataList;

  @override
  String toString() {
    return 'PaletteDownloadShoesState(colorDownloadDataList: $colorDownloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaletteDownloadShoesState &&
            (identical(other.colorDownloadDataList, colorDownloadDataList) ||
                const DeepCollectionEquality().equals(
                    other.colorDownloadDataList, colorDownloadDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(colorDownloadDataList);

  @JsonKey(ignore: true)
  @override
  _$PaletteDownloadShoesStateCopyWith<_PaletteDownloadShoesState>
      get copyWith =>
          __$PaletteDownloadShoesStateCopyWithImpl<_PaletteDownloadShoesState>(
              this, _$identity);
}

abstract class _PaletteDownloadShoesState implements PaletteDownloadShoesState {
  const factory _PaletteDownloadShoesState(
          {List<DownloadData> colorDownloadDataList}) =
      _$_PaletteDownloadShoesState;

  @override
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaletteDownloadShoesStateCopyWith<_PaletteDownloadShoesState>
      get copyWith => throw _privateConstructorUsedError;
}
