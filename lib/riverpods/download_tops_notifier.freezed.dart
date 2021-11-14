// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_tops_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadTopsStateTearOff {
  const _$DownloadTopsStateTearOff();

  _DownloadTopsState call({List<DownloadData> downloadDataList = const []}) {
    return _DownloadTopsState(
      downloadDataList: downloadDataList,
    );
  }
}

/// @nodoc
const $DownloadTopsState = _$DownloadTopsStateTearOff();

/// @nodoc
mixin _$DownloadTopsState {
  List<DownloadData> get downloadDataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadTopsStateCopyWith<DownloadTopsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadTopsStateCopyWith<$Res> {
  factory $DownloadTopsStateCopyWith(
          DownloadTopsState value, $Res Function(DownloadTopsState) then) =
      _$DownloadTopsStateCopyWithImpl<$Res>;
  $Res call({List<DownloadData> downloadDataList});
}

/// @nodoc
class _$DownloadTopsStateCopyWithImpl<$Res>
    implements $DownloadTopsStateCopyWith<$Res> {
  _$DownloadTopsStateCopyWithImpl(this._value, this._then);

  final DownloadTopsState _value;
  // ignore: unused_field
  final $Res Function(DownloadTopsState) _then;

  @override
  $Res call({
    Object? downloadDataList = freezed,
  }) {
    return _then(_value.copyWith(
      downloadDataList: downloadDataList == freezed
          ? _value.downloadDataList
          : downloadDataList // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadTopsStateCopyWith<$Res>
    implements $DownloadTopsStateCopyWith<$Res> {
  factory _$DownloadTopsStateCopyWith(
          _DownloadTopsState value, $Res Function(_DownloadTopsState) then) =
      __$DownloadTopsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DownloadData> downloadDataList});
}

/// @nodoc
class __$DownloadTopsStateCopyWithImpl<$Res>
    extends _$DownloadTopsStateCopyWithImpl<$Res>
    implements _$DownloadTopsStateCopyWith<$Res> {
  __$DownloadTopsStateCopyWithImpl(
      _DownloadTopsState _value, $Res Function(_DownloadTopsState) _then)
      : super(_value, (v) => _then(v as _DownloadTopsState));

  @override
  _DownloadTopsState get _value => super._value as _DownloadTopsState;

  @override
  $Res call({
    Object? downloadDataList = freezed,
  }) {
    return _then(_DownloadTopsState(
      downloadDataList: downloadDataList == freezed
          ? _value.downloadDataList
          : downloadDataList // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
    ));
  }
}

/// @nodoc

class _$_DownloadTopsState implements _DownloadTopsState {
  const _$_DownloadTopsState({this.downloadDataList = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<DownloadData> downloadDataList;

  @override
  String toString() {
    return 'DownloadTopsState(downloadDataList: $downloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadTopsState &&
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
  _$DownloadTopsStateCopyWith<_DownloadTopsState> get copyWith =>
      __$DownloadTopsStateCopyWithImpl<_DownloadTopsState>(this, _$identity);
}

abstract class _DownloadTopsState implements DownloadTopsState {
  const factory _DownloadTopsState({List<DownloadData> downloadDataList}) =
      _$_DownloadTopsState;

  @override
  List<DownloadData> get downloadDataList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadTopsStateCopyWith<_DownloadTopsState> get copyWith =>
      throw _privateConstructorUsedError;
}
