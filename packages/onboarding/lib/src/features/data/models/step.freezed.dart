// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Step _$StepFromJson(Map<String, dynamic> json) {
  return _Step.fromJson(json);
}

/// @nodoc
mixin _$Step {
  String get id => throw _privateConstructorUsedError;
  String get stepLabel => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;
  String? get currentSectionId => throw _privateConstructorUsedError;

  /// Serializes this Step to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepCopyWith<Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) then) =
      _$StepCopyWithImpl<$Res, Step>;
  @useResult
  $Res call(
      {String id,
      String stepLabel,
      String title,
      List<Section> sections,
      String? currentSectionId});
}

/// @nodoc
class _$StepCopyWithImpl<$Res, $Val extends Step>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stepLabel = null,
    Object? title = null,
    Object? sections = null,
    Object? currentSectionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stepLabel: null == stepLabel
          ? _value.stepLabel
          : stepLabel // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      currentSectionId: freezed == currentSectionId
          ? _value.currentSectionId
          : currentSectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepImplCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$$StepImplCopyWith(
          _$StepImpl value, $Res Function(_$StepImpl) then) =
      __$$StepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String stepLabel,
      String title,
      List<Section> sections,
      String? currentSectionId});
}

/// @nodoc
class __$$StepImplCopyWithImpl<$Res>
    extends _$StepCopyWithImpl<$Res, _$StepImpl>
    implements _$$StepImplCopyWith<$Res> {
  __$$StepImplCopyWithImpl(_$StepImpl _value, $Res Function(_$StepImpl) _then)
      : super(_value, _then);

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stepLabel = null,
    Object? title = null,
    Object? sections = null,
    Object? currentSectionId = freezed,
  }) {
    return _then(_$StepImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stepLabel: null == stepLabel
          ? _value.stepLabel
          : stepLabel // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      currentSectionId: freezed == currentSectionId
          ? _value.currentSectionId
          : currentSectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepImpl implements _Step {
  _$StepImpl(
      {required this.id,
      required this.stepLabel,
      required this.title,
      required final List<Section> sections,
      this.currentSectionId})
      : _sections = sections;

  factory _$StepImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepImplFromJson(json);

  @override
  final String id;
  @override
  final String stepLabel;
  @override
  final String title;
  final List<Section> _sections;
  @override
  List<Section> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final String? currentSectionId;

  @override
  String toString() {
    return 'Step(id: $id, stepLabel: $stepLabel, title: $title, sections: $sections, currentSectionId: $currentSectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stepLabel, stepLabel) ||
                other.stepLabel == stepLabel) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.currentSectionId, currentSectionId) ||
                other.currentSectionId == currentSectionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, stepLabel, title,
      const DeepCollectionEquality().hash(_sections), currentSectionId);

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      __$$StepImplCopyWithImpl<_$StepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepImplToJson(
      this,
    );
  }
}

abstract class _Step implements Step {
  factory _Step(
      {required final String id,
      required final String stepLabel,
      required final String title,
      required final List<Section> sections,
      final String? currentSectionId}) = _$StepImpl;

  factory _Step.fromJson(Map<String, dynamic> json) = _$StepImpl.fromJson;

  @override
  String get id;
  @override
  String get stepLabel;
  @override
  String get title;
  @override
  List<Section> get sections;
  @override
  String? get currentSectionId;

  /// Create a copy of Step
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
