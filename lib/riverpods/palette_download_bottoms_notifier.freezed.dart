// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'palette_download_bottoms_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaletteDownloadBottomsStateTearOff {
  const _$PaletteDownloadBottomsStateTearOff();

  _PaletteDownloadBottomsState call(
      {List<DownloadData> colorDownloadDataList = const []}) {
    return _PaletteDownloadBottomsState(
      colorDownloadDataList: colorDownloadDataList,
    );
  }
}

/// @nodoc
const $PaletteDownloadBottomsState = _$PaletteDownloadBottomsStateTearOff();

/// @nodoc
mixin _$PaletteDownloadBottomsState {
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteDownloadBottomsStateCopyWith<PaletteDownloadBottomsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteDownloadBottomsStateCopyWith<$Res> {
  factory $PaletteDownloadBottomsStateCopyWith(
          PaletteDownloadBottomsState value,
          $Res Function(PaletteDownloadBottomsState) then) =
      _$PaletteDownloadBottomsStateCopyWithImpl<$Res>;
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class _$PaletteDownloadBottomsStateCopyWithImpl<$Res>
    implements $PaletteDownloadBottomsStateCopyWith<$Res> {
  _$PaletteDownloadBottomsStateCopyWithImpl(this._value, this._then);

  final PaletteDownloadBottomsState _value;
  // ignore: unused_field
  final $Res Function(PaletteDownloadBottomsState) _then;

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
abstract class _$PaletteDownloadBottomsStateCopyWith<$Res>
    implements $PaletteDownloadBottomsStateCopyWith<$Res> {
  factory _$PaletteDownloadBottomsStateCopyWith(
          _PaletteDownloadBottomsState value,
          $Res Function(_PaletteDownloadBottomsState) then) =
      __$PaletteDownloadBottomsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DownloadData> colorDownloadDataList});
}

/// @nodoc
class __$PaletteDownloadBottomsStateCopyWithImpl<$Res>
    extends _$PaletteDownloadBottomsStateCopyWithImpl<$Res>
    implements _$PaletteDownloadBottomsStateCopyWith<$Res> {
  __$PaletteDownloadBottomsStateCopyWithImpl(
      _PaletteDownloadBottomsState _value,
      $Res Function(_PaletteDownloadBottomsState) _then)
      : super(_value, (v) => _then(v as _PaletteDownloadBottomsState));

  @override
  _PaletteDownloadBottomsState get _value =>
      super._value as _PaletteDownloadBottomsState;

  @override
  $Res call({
    Object? colorDownloadDataList = freezed,
  }) {
    return _then(_PaletteDownloadBottomsState(
      colorDownloadDataList: colorDownloadDataList == freezed
          ? _value.colorDownloadDataList
          : colorDownloadDataList // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
    ));
  }
}

/// @nodoc

class _$_PaletteDownloadBottomsState implements _PaletteDownloadBottomsState {
  const _$_PaletteDownloadBottomsState({this.colorDownloadDataList = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<DownloadData> colorDownloadDataList;

  @override
  String toString() {
    return 'PaletteDownloadBottomsState(colorDownloadDataList: $colorDownloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaletteDownloadBottomsState &&
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
  _$PaletteDownloadBottomsStateCopyWith<_PaletteDownloadBottomsState>
      get copyWith => __$PaletteDownloadBottomsStateCopyWithImpl<
          _PaletteDownloadBottomsState>(this, _$identity);
}

abstract class _PaletteDownloadBottomsState
    implements PaletteDownloadBottomsState {
  const factory _PaletteDownloadBottomsState(
          {List<DownloadData> colorDownloadDataList}) =
      _$_PaletteDownloadBottomsState;

  @override
  List<DownloadData> get colorDownloadDataList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaletteDownloadBottomsStateCopyWith<_PaletteDownloadBottomsState>
      get copyWith => throw _privateConstructorUsedError;
}
