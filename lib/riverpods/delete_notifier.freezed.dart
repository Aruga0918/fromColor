// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delete_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeleteStateTearOff {
  const _$DeleteStateTearOff();

  _DeleteState call(
      {List<DownloadData> deleteItems = const [], bool isEditing = false}) {
    return _DeleteState(
      deleteItems: deleteItems,
      isEditing: isEditing,
    );
  }
}

/// @nodoc
const $DeleteState = _$DeleteStateTearOff();

/// @nodoc
mixin _$DeleteState {
  List<DownloadData> get deleteItems => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteStateCopyWith<DeleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStateCopyWith<$Res> {
  factory $DeleteStateCopyWith(
          DeleteState value, $Res Function(DeleteState) then) =
      _$DeleteStateCopyWithImpl<$Res>;
  $Res call({List<DownloadData> deleteItems, bool isEditing});
}

/// @nodoc
class _$DeleteStateCopyWithImpl<$Res> implements $DeleteStateCopyWith<$Res> {
  _$DeleteStateCopyWithImpl(this._value, this._then);

  final DeleteState _value;
  // ignore: unused_field
  final $Res Function(DeleteState) _then;

  @override
  $Res call({
    Object? deleteItems = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_value.copyWith(
      deleteItems: deleteItems == freezed
          ? _value.deleteItems
          : deleteItems // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DeleteStateCopyWith<$Res>
    implements $DeleteStateCopyWith<$Res> {
  factory _$DeleteStateCopyWith(
          _DeleteState value, $Res Function(_DeleteState) then) =
      __$DeleteStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DownloadData> deleteItems, bool isEditing});
}

/// @nodoc
class __$DeleteStateCopyWithImpl<$Res> extends _$DeleteStateCopyWithImpl<$Res>
    implements _$DeleteStateCopyWith<$Res> {
  __$DeleteStateCopyWithImpl(
      _DeleteState _value, $Res Function(_DeleteState) _then)
      : super(_value, (v) => _then(v as _DeleteState));

  @override
  _DeleteState get _value => super._value as _DeleteState;

  @override
  $Res call({
    Object? deleteItems = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_DeleteState(
      deleteItems: deleteItems == freezed
          ? _value.deleteItems
          : deleteItems // ignore: cast_nullable_to_non_nullable
              as List<DownloadData>,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DeleteState implements _DeleteState {
  const _$_DeleteState({this.deleteItems = const [], this.isEditing = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<DownloadData> deleteItems;
  @JsonKey(defaultValue: false)
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'DeleteState(deleteItems: $deleteItems, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteState &&
            (identical(other.deleteItems, deleteItems) ||
                const DeepCollectionEquality()
                    .equals(other.deleteItems, deleteItems)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deleteItems) ^
      const DeepCollectionEquality().hash(isEditing);

  @JsonKey(ignore: true)
  @override
  _$DeleteStateCopyWith<_DeleteState> get copyWith =>
      __$DeleteStateCopyWithImpl<_DeleteState>(this, _$identity);
}

abstract class _DeleteState implements DeleteState {
  const factory _DeleteState({List<DownloadData> deleteItems, bool isEditing}) =
      _$_DeleteState;

  @override
  List<DownloadData> get deleteItems => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteStateCopyWith<_DeleteState> get copyWith =>
      throw _privateConstructorUsedError;
}
