// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Section {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Progress get progressBar => throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;

  /// Serializes this Section to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call(
      {String id, String title, Progress progressBar, List<Group> groups});

  $ProgressCopyWith<$Res> get progressBar;
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? progressBar = null,
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      progressBar: null == progressBar
          ? _value.progressBar
          : progressBar // ignore: cast_nullable_to_non_nullable
              as Progress,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ) as $Val);
  }

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgressCopyWith<$Res> get progressBar {
    return $ProgressCopyWith<$Res>(_value.progressBar, (value) {
      return _then(_value.copyWith(progressBar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionImplCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$SectionImplCopyWith(
          _$SectionImpl value, $Res Function(_$SectionImpl) then) =
      __$$SectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, Progress progressBar, List<Group> groups});

  @override
  $ProgressCopyWith<$Res> get progressBar;
}

/// @nodoc
class __$$SectionImplCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$SectionImpl>
    implements _$$SectionImplCopyWith<$Res> {
  __$$SectionImplCopyWithImpl(
      _$SectionImpl _value, $Res Function(_$SectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? progressBar = null,
    Object? groups = null,
  }) {
    return _then(_$SectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      progressBar: null == progressBar
          ? _value.progressBar
          : progressBar // ignore: cast_nullable_to_non_nullable
              as Progress,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionImpl implements _Section {
  _$SectionImpl(
      {required this.id,
      required this.title,
      required this.progressBar,
      required final List<Group> groups})
      : _groups = groups;

  factory _$SectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final Progress progressBar;
  final List<Group> _groups;
  @override
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'Section(id: $id, title: $title, progressBar: $progressBar, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.progressBar, progressBar) ||
                other.progressBar == progressBar) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, progressBar,
      const DeepCollectionEquality().hash(_groups));

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      __$$SectionImplCopyWithImpl<_$SectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionImplToJson(
      this,
    );
  }
}

abstract class _Section implements Section {
  factory _Section(
      {required final String id,
      required final String title,
      required final Progress progressBar,
      required final List<Group> groups}) = _$SectionImpl;

  factory _Section.fromJson(Map<String, dynamic> json) = _$SectionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  Progress get progressBar;
  @override
  List<Group> get groups;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
