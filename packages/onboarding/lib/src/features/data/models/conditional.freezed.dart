// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conditional.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Conditional _$ConditionalFromJson(Map<String, dynamic> json) {
  return _Conditional.fromJson(json);
}

/// @nodoc
mixin _$Conditional {
  LogicOperator get logicalOperator => throw _privateConstructorUsedError;
  List<Condition> get conditions => throw _privateConstructorUsedError;

  /// Serializes this Conditional to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Conditional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConditionalCopyWith<Conditional> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionalCopyWith<$Res> {
  factory $ConditionalCopyWith(
          Conditional value, $Res Function(Conditional) then) =
      _$ConditionalCopyWithImpl<$Res, Conditional>;
  @useResult
  $Res call({LogicOperator logicalOperator, List<Condition> conditions});
}

/// @nodoc
class _$ConditionalCopyWithImpl<$Res, $Val extends Conditional>
    implements $ConditionalCopyWith<$Res> {
  _$ConditionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Conditional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logicalOperator = null,
    Object? conditions = null,
  }) {
    return _then(_value.copyWith(
      logicalOperator: null == logicalOperator
          ? _value.logicalOperator
          : logicalOperator // ignore: cast_nullable_to_non_nullable
              as LogicOperator,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionalImplCopyWith<$Res>
    implements $ConditionalCopyWith<$Res> {
  factory _$$ConditionalImplCopyWith(
          _$ConditionalImpl value, $Res Function(_$ConditionalImpl) then) =
      __$$ConditionalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LogicOperator logicalOperator, List<Condition> conditions});
}

/// @nodoc
class __$$ConditionalImplCopyWithImpl<$Res>
    extends _$ConditionalCopyWithImpl<$Res, _$ConditionalImpl>
    implements _$$ConditionalImplCopyWith<$Res> {
  __$$ConditionalImplCopyWithImpl(
      _$ConditionalImpl _value, $Res Function(_$ConditionalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Conditional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logicalOperator = null,
    Object? conditions = null,
  }) {
    return _then(_$ConditionalImpl(
      logicalOperator: null == logicalOperator
          ? _value.logicalOperator
          : logicalOperator // ignore: cast_nullable_to_non_nullable
              as LogicOperator,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionalImpl implements _Conditional {
  _$ConditionalImpl(
      {required this.logicalOperator,
      required final List<Condition> conditions})
      : _conditions = conditions;

  factory _$ConditionalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionalImplFromJson(json);

  @override
  final LogicOperator logicalOperator;
  final List<Condition> _conditions;
  @override
  List<Condition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  String toString() {
    return 'Conditional(logicalOperator: $logicalOperator, conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionalImpl &&
            (identical(other.logicalOperator, logicalOperator) ||
                other.logicalOperator == logicalOperator) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logicalOperator,
      const DeepCollectionEquality().hash(_conditions));

  /// Create a copy of Conditional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionalImplCopyWith<_$ConditionalImpl> get copyWith =>
      __$$ConditionalImplCopyWithImpl<_$ConditionalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionalImplToJson(
      this,
    );
  }
}

abstract class _Conditional implements Conditional {
  factory _Conditional(
      {required final LogicOperator logicalOperator,
      required final List<Condition> conditions}) = _$ConditionalImpl;

  factory _Conditional.fromJson(Map<String, dynamic> json) =
      _$ConditionalImpl.fromJson;

  @override
  LogicOperator get logicalOperator;
  @override
  List<Condition> get conditions;

  /// Create a copy of Conditional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionalImplCopyWith<_$ConditionalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String get targetFieldId => throw _privateConstructorUsedError;
  Operator get operator => throw _privateConstructorUsedError;
  dynamic get comparisonValue => throw _privateConstructorUsedError;

  /// Serializes this Condition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String targetFieldId, Operator operator, dynamic comparisonValue});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetFieldId = null,
    Object? operator = null,
    Object? comparisonValue = freezed,
  }) {
    return _then(_value.copyWith(
      targetFieldId: null == targetFieldId
          ? _value.targetFieldId
          : targetFieldId // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator,
      comparisonValue: freezed == comparisonValue
          ? _value.comparisonValue
          : comparisonValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $ConditionCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetFieldId, Operator operator, dynamic comparisonValue});
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetFieldId = null,
    Object? operator = null,
    Object? comparisonValue = freezed,
  }) {
    return _then(_$ConditionImpl(
      targetFieldId: null == targetFieldId
          ? _value.targetFieldId
          : targetFieldId // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator,
      comparisonValue: freezed == comparisonValue
          ? _value.comparisonValue
          : comparisonValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl implements _Condition {
  _$ConditionImpl(
      {required this.targetFieldId,
      required this.operator,
      required this.comparisonValue});

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  final String targetFieldId;
  @override
  final Operator operator;
  @override
  final dynamic comparisonValue;

  @override
  String toString() {
    return 'Condition(targetFieldId: $targetFieldId, operator: $operator, comparisonValue: $comparisonValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.targetFieldId, targetFieldId) ||
                other.targetFieldId == targetFieldId) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality()
                .equals(other.comparisonValue, comparisonValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, targetFieldId, operator,
      const DeepCollectionEquality().hash(comparisonValue));

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  factory _Condition(
      {required final String targetFieldId,
      required final Operator operator,
      required final dynamic comparisonValue}) = _$ConditionImpl;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  String get targetFieldId;
  @override
  Operator get operator;
  @override
  dynamic get comparisonValue;

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
