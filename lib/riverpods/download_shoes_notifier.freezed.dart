// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_shoes_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadShoesStateTearOff {
  const _$DownloadShoesStateTearOff();

  _DownloadShoesState call(
      {Map<String, List<DownloadData>> downloadDataList = const {}}) {
    return _DownloadShoesState(
      downloadDataList: downloadDataList,
    );
  }
}

/// @nodoc
const $DownloadShoesState = _$DownloadShoesStateTearOff();

/// @nodoc
mixin _$DownloadShoesState {
  Map<String, List<DownloadData>> get downloadDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadShoesStateCopyWith<DownloadShoesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadShoesStateCopyWith<$Res> {
  factory $DownloadShoesStateCopyWith(
          DownloadShoesState value, $Res Function(DownloadShoesState) then) =
      _$DownloadShoesStateCopyWithImpl<$Res>;
  $Res call({Map<String, List<DownloadData>> downloadDataList});
}

/// @nodoc
class _$DownloadShoesStateCopyWithImpl<$Res>
    implements $DownloadShoesStateCopyWith<$Res> {
  _$DownloadShoesStateCopyWithImpl(this._value, this._then);

  final DownloadShoesState _value;
  // ignore: unused_field
  final $Res Function(DownloadShoesState) _then;

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
abstract class _$DownloadShoesStateCopyWith<$Res>
    implements $DownloadShoesStateCopyWith<$Res> {
  factory _$DownloadShoesStateCopyWith(
          _DownloadShoesState value, $Res Function(_DownloadShoesState) then) =
      __$DownloadShoesStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, List<DownloadData>> downloadDataList});
}

/// @nodoc
class __$DownloadShoesStateCopyWithImpl<$Res>
    extends _$DownloadShoesStateCopyWithImpl<$Res>
    implements _$DownloadShoesStateCopyWith<$Res> {
  __$DownloadShoesStateCopyWithImpl(
      _DownloadShoesState _value, $Res Function(_DownloadShoesState) _then)
      : super(_value, (v) => _then(v as _DownloadShoesState));

  @override
  _DownloadShoesState get _value => super._value as _DownloadShoesState;

  @override
  $Res call({
    Object? downloadDataList = freezed,
  }) {
    return _then(_DownloadShoesState(
      downloadDataList: downloadDataList == freezed
          ? _value.downloadDataList
          : downloadDataList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DownloadData>>,
    ));
  }
}

/// @nodoc

class _$_DownloadShoesState implements _DownloadShoesState {
  const _$_DownloadShoesState({this.downloadDataList = const {}});

  @JsonKey(defaultValue: const {})
  @override
  final Map<String, List<DownloadData>> downloadDataList;

  @override
  String toString() {
    return 'DownloadShoesState(downloadDataList: $downloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadShoesState &&
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
  _$DownloadShoesStateCopyWith<_DownloadShoesState> get copyWith =>
      __$DownloadShoesStateCopyWithImpl<_DownloadShoesState>(this, _$identity);
}

abstract class _DownloadShoesState implements DownloadShoesState {
  const factory _DownloadShoesState(
          {Map<String, List<DownloadData>> downloadDataList}) =
      _$_DownloadShoesState;

  @override
  Map<String, List<DownloadData>> get downloadDataList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadShoesStateCopyWith<_DownloadShoesState> get copyWith =>
      throw _privateConstructorUsedError;
}
