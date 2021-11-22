// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'palette_download_tops_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaletteDownloadTopsStateTearOff {
  const _$PaletteDownloadTopsStateTearOff();

  _PaletteDownloadTopsState call(
      {List<DownloadData> colorDownloadDataList = const []}) {
    return _PaletteDownloadTopsState(
      colorDownloadDataList: colorDownloadDataList,
    );
  }
}

/// @nodoc
const $PaletteDownloadTopsState = _$PaletteDownloadTopsStateTearOff();

/// @nodoc
mixin _$PaletteDownloadTopsState {
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteDownloadTopsStateCopyWith<PaletteDownloadTopsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteDownloadTopsStateCopyWith<$Res> {
  factory $PaletteDownloadTopsStateCopyWith(PaletteDownloadTopsState value,
          $Res Function(PaletteDownloadTopsState) then) =
      _$PaletteDownloadTopsStateCopyWithImpl<$Res>;
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class _$PaletteDownloadTopsStateCopyWithImpl<$Res>
    implements $PaletteDownloadTopsStateCopyWith<$Res> {
  _$PaletteDownloadTopsStateCopyWithImpl(this._value, this._then);

  final PaletteDownloadTopsState _value;
  // ignore: unused_field
  final $Res Function(PaletteDownloadTopsState) _then;

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
abstract class _$PaletteDownloadTopsStateCopyWith<$Res>
    implements $PaletteDownloadTopsStateCopyWith<$Res> {
  factory _$PaletteDownloadTopsStateCopyWith(_PaletteDownloadTopsState value,
          $Res Function(_PaletteDownloadTopsState) then) =
      __$PaletteDownloadTopsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class __$PaletteDownloadTopsStateCopyWithImpl<$Res>
    extends _$PaletteDownloadTopsStateCopyWithImpl<$Res>
    implements _$PaletteDownloadTopsStateCopyWith<$Res> {
  __$PaletteDownloadTopsStateCopyWithImpl(_PaletteDownloadTopsState _value,
      $Res Function(_PaletteDownloadTopsState) _then)
      : super(_value, (v) => _then(v as _PaletteDownloadTopsState));

  @override
  _PaletteDownloadTopsState get _value =>
      super._value as _PaletteDownloadTopsState;

  @override
  $Res call({
    Object? colorDownloadDataList = freezed,
  }) {
    return _then(_PaletteDownloadTopsState(
      colorDownloadDataList: colorDownloadDataList == freezed
          ? _value.colorDownloadDataList
          : colorDownloadDataList // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
    ));
  }
}

/// @nodoc

class _$_PaletteDownloadTopsState implements _PaletteDownloadTopsState {
  const _$_PaletteDownloadTopsState({this.colorDownloadDataList = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<DownloadData> colorDownloadDataList;

  @override
  String toString() {
    return 'PaletteDownloadTopsState(colorDownloadDataList: $colorDownloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaletteDownloadTopsState &&
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
  _$PaletteDownloadTopsStateCopyWith<_PaletteDownloadTopsState> get copyWith =>
      __$PaletteDownloadTopsStateCopyWithImpl<_PaletteDownloadTopsState>(
          this, _$identity);
}

abstract class _PaletteDownloadTopsState implements PaletteDownloadTopsState {
  const factory _PaletteDownloadTopsState(
      {List<DownloadData> colorDownloadDataList}) = _$_PaletteDownloadTopsState;

  @override
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaletteDownloadTopsStateCopyWith<_PaletteDownloadTopsState> get copyWith =>
      throw _privateConstructorUsedError;
}
