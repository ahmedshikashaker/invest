// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paci_lock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PACILockModel {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Create a copy of PACILockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PACILockModelCopyWith<PACILockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PACILockModelCopyWith<$Res> {
  factory $PACILockModelCopyWith(
          PACILockModel value, $Res Function(PACILockModel) then) =
      _$PACILockModelCopyWithImpl<$Res, PACILockModel>;
  @useResult
  $Res call({String id, DateTime date});
}

/// @nodoc
class _$PACILockModelCopyWithImpl<$Res, $Val extends PACILockModel>
    implements $PACILockModelCopyWith<$Res> {
  _$PACILockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PACILockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PACILockModelImplCopyWith<$Res>
    implements $PACILockModelCopyWith<$Res> {
  factory _$$PACILockModelImplCopyWith(
          _$PACILockModelImpl value, $Res Function(_$PACILockModelImpl) then) =
      __$$PACILockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime date});
}

/// @nodoc
class __$$PACILockModelImplCopyWithImpl<$Res>
    extends _$PACILockModelCopyWithImpl<$Res, _$PACILockModelImpl>
    implements _$$PACILockModelImplCopyWith<$Res> {
  __$$PACILockModelImplCopyWithImpl(
      _$PACILockModelImpl _value, $Res Function(_$PACILockModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PACILockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
  }) {
    return _then(_$PACILockModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PACILockModelImpl implements _PACILockModel {
  const _$PACILockModelImpl({required this.id, required this.date});

  @override
  final String id;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'PACILockModel(id: $id, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PACILockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date);

  /// Create a copy of PACILockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PACILockModelImplCopyWith<_$PACILockModelImpl> get copyWith =>
      __$$PACILockModelImplCopyWithImpl<_$PACILockModelImpl>(this, _$identity);
}

abstract class _PACILockModel implements PACILockModel {
  const factory _PACILockModel(
      {required final String id,
      required final DateTime date}) = _$PACILockModelImpl;

  @override
  String get id;
  @override
  DateTime get date;

  /// Create a copy of PACILockModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PACILockModelImplCopyWith<_$PACILockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
