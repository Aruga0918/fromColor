// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_outer_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadOuterStateTearOff {
  const _$DownloadOuterStateTearOff();

  _DownloadOuterState call(
      {Map<String, List<DownloadData>> downloadDataList = const {}}) {
    return _DownloadOuterState(
      downloadDataList: downloadDataList,
    );
  }
}

/// @nodoc
const $DownloadOuterState = _$DownloadOuterStateTearOff();

/// @nodoc
mixin _$DownloadOuterState {
  Map<String, List<DownloadData>> get downloadDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadOuterStateCopyWith<DownloadOuterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadOuterStateCopyWith<$Res> {
  factory $DownloadOuterStateCopyWith(
          DownloadOuterState value, $Res Function(DownloadOuterState) then) =
      _$DownloadOuterStateCopyWithImpl<$Res>;
  $Res call({Map<String, List<DownloadData>> downloadDataList});
}

/// @nodoc
class _$DownloadOuterStateCopyWithImpl<$Res>
    implements $DownloadOuterStateCopyWith<$Res> {
  _$DownloadOuterStateCopyWithImpl(this._value, this._then);

  final DownloadOuterState _value;
  // ignore: unused_field
  final $Res Function(DownloadOuterState) _then;

  @override
  $Res call({
    Object? downloadDataList = freezed,
  }) {
    return _then(_value.copyWith(
      downloadDataList: downloadDataList == freezed
          ? _value.downloadDataList
          : downloadDataList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DownloadData>>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadOuterStateCopyWith<$Res>
    implements $DownloadOuterStateCopyWith<$Res> {
  factory _$DownloadOuterStateCopyWith(
          _DownloadOuterState value, $Res Function(_DownloadOuterState) then) =
      __$DownloadOuterStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, List<DownloadData>> downloadDataList});
}

/// @nodoc
class __$DownloadOuterStateCopyWithImpl<$Res>
    extends _$DownloadOuterStateCopyWithImpl<$Res>
    implements _$DownloadOuterStateCopyWith<$Res> {
  __$DownloadOuterStateCopyWithImpl(
      _DownloadOuterState _value, $Res Function(_DownloadOuterState) _then)
      : super(_value, (v) => _then(v as _DownloadOuterState));

  @override
  _DownloadOuterState get _value => super._value as _DownloadOuterState;

  @override
  $Res call({
    Object? downloadDataList = freezed,
  }) {
    return _then(_DownloadOuterState(
      downloadDataList: downloadDataList == freezed
          ? _value.downloadDataList
          : downloadDataList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DownloadData>>,
    ));
  }
}

/// @nodoc

class _$_DownloadOuterState implements _DownloadOuterState {
  const _$_DownloadOuterState({this.downloadDataList = const {}});

  @JsonKey(defaultValue: const {})
  @override
  final Map<String, List<DownloadData>> downloadDataList;

  @override
  String toString() {
    return 'DownloadOuterState(downloadDataList: $downloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadOuterState &&
            (identical(other.downloadDataList, downloadDataList) ||
                const DeepCollectionEquality()
                    .equals(other.downloadDataList, downloadDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(downloadDataList);

  @JsonKey(ignore: true)
  @override
  _$DownloadOuterStateCopyWith<_DownloadOuterState> get copyWith =>
      __$DownloadOuterStateCopyWithImpl<_DownloadOuterState>(this, _$identity);
}

abstract class _DownloadOuterState implements DownloadOuterState {
  const factory _DownloadOuterState(
          {Map<String, List<DownloadData>> downloadDataList}) =
      _$_DownloadOuterState;

  @override
  Map<String, List<DownloadData>> get downloadDataList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadOuterStateCopyWith<_DownloadOuterState> get copyWith =>
      throw _privateConstructorUsedError;
}
