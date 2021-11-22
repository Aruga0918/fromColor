// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_bottoms_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadBottomsStateTearOff {
  const _$DownloadBottomsStateTearOff();

  _DownloadBottomsState call(
      {Map<String, List<DownloadData>> downloadDataList = const {}}) {
    return _DownloadBottomsState(
      downloadDataList: downloadDataList,
    );
  }
}

/// @nodoc
const $DownloadBottomsState = _$DownloadBottomsStateTearOff();

/// @nodoc
mixin _$DownloadBottomsState {
  Map<String, List<DownloadData>> get downloadDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadBottomsStateCopyWith<DownloadBottomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadBottomsStateCopyWith<$Res> {
  factory $DownloadBottomsStateCopyWith(DownloadBottomsState value,
          $Res Function(DownloadBottomsState) then) =
      _$DownloadBottomsStateCopyWithImpl<$Res>;
  $Res call({Map<String, List<DownloadData>> downloadDataList});
}

/// @nodoc
class _$DownloadBottomsStateCopyWithImpl<$Res>
    implements $DownloadBottomsStateCopyWith<$Res> {
  _$DownloadBottomsStateCopyWithImpl(this._value, this._then);

  final DownloadBottomsState _value;
  // ignore: unused_field
  final $Res Function(DownloadBottomsState) _then;

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
abstract class _$DownloadBottomsStateCopyWith<$Res>
    implements $DownloadBottomsStateCopyWith<$Res> {
  factory _$DownloadBottomsStateCopyWith(_DownloadBottomsState value,
          $Res Function(_DownloadBottomsState) then) =
      __$DownloadBottomsStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, List<DownloadData>> downloadDataList});
}

/// @nodoc
class __$DownloadBottomsStateCopyWithImpl<$Res>
    extends _$DownloadBottomsStateCopyWithImpl<$Res>
    implements _$DownloadBottomsStateCopyWith<$Res> {
  __$DownloadBottomsStateCopyWithImpl(
      _DownloadBottomsState _value, $Res Function(_DownloadBottomsState) _then)
      : super(_value, (v) => _then(v as _DownloadBottomsState));

  @override
  _DownloadBottomsState get _value => super._value as _DownloadBottomsState;

  @override
  $Res call({
    Object? downloadDataList = freezed,
  }) {
    return _then(_DownloadBottomsState(
      downloadDataList: downloadDataList == freezed
          ? _value.downloadDataList
          : downloadDataList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DownloadData>>,
    ));
  }
}

/// @nodoc

class _$_DownloadBottomsState implements _DownloadBottomsState {
  const _$_DownloadBottomsState({this.downloadDataList = const {}});

  @JsonKey(defaultValue: const {})
  @override
  final Map<String, List<DownloadData>> downloadDataList;

  @override
  String toString() {
    return 'DownloadBottomsState(downloadDataList: $downloadDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadBottomsState &&
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
  _$DownloadBottomsStateCopyWith<_DownloadBottomsState> get copyWith =>
      __$DownloadBottomsStateCopyWithImpl<_DownloadBottomsState>(
          this, _$identity);
}

abstract class _DownloadBottomsState implements DownloadBottomsState {
  const factory _DownloadBottomsState(
          {Map<String, List<DownloadData>> downloadDataList}) =
      _$_DownloadBottomsState;

  @override
  Map<String, List<DownloadData>> get downloadDataList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadBottomsStateCopyWith<_DownloadBottomsState> get copyWith =>
      throw _privateConstructorUsedError;
}
