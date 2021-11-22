// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'palette_download_outer_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaletteDownloadOuterStateTearOff {
  const _$PaletteDownloadOuterStateTearOff();

  _PaletteDownloadOuterState call(
      {List<DownloadData> colorDownloadDataList = const []}) {
    return _PaletteDownloadOuterState(
      colorDownloadDataList: colorDownloadDataList,
    );
  }
}

/// @nodoc
const $PaletteDownloadOuterState = _$PaletteDownloadOuterStateTearOff();

/// @nodoc
mixin _$PaletteDownloadOuterState {
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteDownloadOuterStateCopyWith<PaletteDownloadOuterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteDownloadOuterStateCopyWith<$Res> {
  factory $PaletteDownloadOuterStateCopyWith(PaletteDownloadOuterState value,
          $Res Function(PaletteDownloadOuterState) then) =
      _$PaletteDownloadOuterStateCopyWithImpl<$Res>;
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class _$PaletteDownloadOuterStateCopyWithImpl<$Res>
    implements $PaletteDownloadOuterStateCopyWith<$Res> {
  _$PaletteDownloadOuterStateCopyWithImpl(this._value, this._then);

  final PaletteDownloadOuterState _value;
  // ignore: unused_field
  final $Res Function(PaletteDownloadOuterState) _then;

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
abstract class _$PaletteDownloadOuterStateCopyWith<$Res>
    implements $PaletteDownloadOuterStateCopyWith<$Res> {
  factory _$PaletteDownloadOuterStateCopyWith(_PaletteDownloadOuterState value,
          $Res Function(_PaletteDownloadOuterState) then) =
      __$PaletteDownloadOuterStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class __$PaletteDownloadOuterStateCopyWithImpl<$Res>
    extends _$PaletteDownloadOuterStateCopyWithImpl<$Res>
    implements _$PaletteDownloadOuterStateCopyWith<$Res> {
  __$PaletteDownloadOuterStateCopyWithImpl(_PaletteDownloadOuterState _value,
      $Res Function(_PaletteDownloadOuterState) _then)
      : super(_value, (v) => _then(v as _PaletteDownloadOuterState));

  @override
  _PaletteDownloadOuterState get _value =>
      super._value as _PaletteDownloadOuterState;

  @override
  $Res call({
    Object? colorDownloadDataList = freezed,
  }) {
    return _then(_PaletteDownloadOuterState(
      colorDownloadDataList: colorDownloadDataList == freezed
          ? _value.colorDownloadDataList
          : colorDownloadDataList // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
    ));
  }
}

/// @nodoc

class _$_PaletteDownloadOuterState implements _PaletteDownloadOuterState {
  const _$_PaletteDownloadOuterState({this.colorDownloadDataList = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<DownloadData> colorDownloadDataList;

  @override
  String toString() {
    return 'PaletteDownloadOuterState(colorDownloadDataList: $colorDownloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaletteDownloadOuterState &&
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
  _$PaletteDownloadOuterStateCopyWith<_PaletteDownloadOuterState>
      get copyWith =>
          __$PaletteDownloadOuterStateCopyWithImpl<_PaletteDownloadOuterState>(
              this, _$identity);
}

abstract class _PaletteDownloadOuterState implements PaletteDownloadOuterState {
  const factory _PaletteDownloadOuterState(
          {List<DownloadData> colorDownloadDataList}) =
      _$_PaletteDownloadOuterState;

  @override
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaletteDownloadOuterStateCopyWith<_PaletteDownloadOuterState>
      get copyWith => throw _privateConstructorUsedError;
}
