// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fund_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FundDetailsResponse _$FundDetailsResponseFromJson(Map<String, dynamic> json) {
  return _FundDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$FundDetailsResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  num? get nav => throw _privateConstructorUsedError;
  DateTime? get navDate => throw _privateConstructorUsedError;
  num? get returnSinceInception => throw _privateConstructorUsedError;
  DateTime? get inceptionDate => throw _privateConstructorUsedError;
  int? get minInvestment => throw _privateConstructorUsedError;
  String? get annualizedOneWeekReturn => throw _privateConstructorUsedError;
  String? get liquidityFrequency => throw _privateConstructorUsedError;
  String? get liquidityValue => throw _privateConstructorUsedError;
  List<FundFeatureModel>? get features => throw _privateConstructorUsedError;
  String? get articlesOfAssociationDocument =>
      throw _privateConstructorUsedError;
  String? get factSheetDocument => throw _privateConstructorUsedError;
  String? get termsAndConditionsDocument => throw _privateConstructorUsedError;
  String? get fundManager => throw _privateConstructorUsedError;
  List<NavHistoryModel>? get navHistory => throw _privateConstructorUsedError;
  IconModelBase64? get icon => throw _privateConstructorUsedError;

  /// Serializes this FundDetailsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FundDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundDetailsResponseCopyWith<FundDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundDetailsResponseCopyWith<$Res> {
  factory $FundDetailsResponseCopyWith(
          FundDetailsResponse value, $Res Function(FundDetailsResponse) then) =
      _$FundDetailsResponseCopyWithImpl<$Res, FundDetailsResponse>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      num? nav,
      DateTime? navDate,
      num? returnSinceInception,
      DateTime? inceptionDate,
      int? minInvestment,
      String? annualizedOneWeekReturn,
      String? liquidityFrequency,
      String? liquidityValue,
      List<FundFeatureModel>? features,
      String? articlesOfAssociationDocument,
      String? factSheetDocument,
      String? termsAndConditionsDocument,
      String? fundManager,
      List<NavHistoryModel>? navHistory,
      IconModelBase64? icon});
}

/// @nodoc
class _$FundDetailsResponseCopyWithImpl<$Res, $Val extends FundDetailsResponse>
    implements $FundDetailsResponseCopyWith<$Res> {
  _$FundDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? nav = freezed,
    Object? navDate = freezed,
    Object? returnSinceInception = freezed,
    Object? inceptionDate = freezed,
    Object? minInvestment = freezed,
    Object? annualizedOneWeekReturn = freezed,
    Object? liquidityFrequency = freezed,
    Object? liquidityValue = freezed,
    Object? features = freezed,
    Object? articlesOfAssociationDocument = freezed,
    Object? factSheetDocument = freezed,
    Object? termsAndConditionsDocument = freezed,
    Object? fundManager = freezed,
    Object? navHistory = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nav: freezed == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as num?,
      navDate: freezed == navDate
          ? _value.navDate
          : navDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnSinceInception: freezed == returnSinceInception
          ? _value.returnSinceInception
          : returnSinceInception // ignore: cast_nullable_to_non_nullable
              as num?,
      inceptionDate: freezed == inceptionDate
          ? _value.inceptionDate
          : inceptionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minInvestment: freezed == minInvestment
          ? _value.minInvestment
          : minInvestment // ignore: cast_nullable_to_non_nullable
              as int?,
      annualizedOneWeekReturn: freezed == annualizedOneWeekReturn
          ? _value.annualizedOneWeekReturn
          : annualizedOneWeekReturn // ignore: cast_nullable_to_non_nullable
              as String?,
      liquidityFrequency: freezed == liquidityFrequency
          ? _value.liquidityFrequency
          : liquidityFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      liquidityValue: freezed == liquidityValue
          ? _value.liquidityValue
          : liquidityValue // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FundFeatureModel>?,
      articlesOfAssociationDocument: freezed == articlesOfAssociationDocument
          ? _value.articlesOfAssociationDocument
          : articlesOfAssociationDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      factSheetDocument: freezed == factSheetDocument
          ? _value.factSheetDocument
          : factSheetDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditionsDocument: freezed == termsAndConditionsDocument
          ? _value.termsAndConditionsDocument
          : termsAndConditionsDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      fundManager: freezed == fundManager
          ? _value.fundManager
          : fundManager // ignore: cast_nullable_to_non_nullable
              as String?,
      navHistory: freezed == navHistory
          ? _value.navHistory
          : navHistory // ignore: cast_nullable_to_non_nullable
              as List<NavHistoryModel>?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconModelBase64?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundDetailsResponseImplCopyWith<$Res>
    implements $FundDetailsResponseCopyWith<$Res> {
  factory _$$FundDetailsResponseImplCopyWith(_$FundDetailsResponseImpl value,
          $Res Function(_$FundDetailsResponseImpl) then) =
      __$$FundDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      num? nav,
      DateTime? navDate,
      num? returnSinceInception,
      DateTime? inceptionDate,
      int? minInvestment,
      String? annualizedOneWeekReturn,
      String? liquidityFrequency,
      String? liquidityValue,
      List<FundFeatureModel>? features,
      String? articlesOfAssociationDocument,
      String? factSheetDocument,
      String? termsAndConditionsDocument,
      String? fundManager,
      List<NavHistoryModel>? navHistory,
      IconModelBase64? icon});
}

/// @nodoc
class __$$FundDetailsResponseImplCopyWithImpl<$Res>
    extends _$FundDetailsResponseCopyWithImpl<$Res, _$FundDetailsResponseImpl>
    implements _$$FundDetailsResponseImplCopyWith<$Res> {
  __$$FundDetailsResponseImplCopyWithImpl(_$FundDetailsResponseImpl _value,
      $Res Function(_$FundDetailsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? nav = freezed,
    Object? navDate = freezed,
    Object? returnSinceInception = freezed,
    Object? inceptionDate = freezed,
    Object? minInvestment = freezed,
    Object? annualizedOneWeekReturn = freezed,
    Object? liquidityFrequency = freezed,
    Object? liquidityValue = freezed,
    Object? features = freezed,
    Object? articlesOfAssociationDocument = freezed,
    Object? factSheetDocument = freezed,
    Object? termsAndConditionsDocument = freezed,
    Object? fundManager = freezed,
    Object? navHistory = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$FundDetailsResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nav: freezed == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as num?,
      navDate: freezed == navDate
          ? _value.navDate
          : navDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnSinceInception: freezed == returnSinceInception
          ? _value.returnSinceInception
          : returnSinceInception // ignore: cast_nullable_to_non_nullable
              as num?,
      inceptionDate: freezed == inceptionDate
          ? _value.inceptionDate
          : inceptionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minInvestment: freezed == minInvestment
          ? _value.minInvestment
          : minInvestment // ignore: cast_nullable_to_non_nullable
              as int?,
      annualizedOneWeekReturn: freezed == annualizedOneWeekReturn
          ? _value.annualizedOneWeekReturn
          : annualizedOneWeekReturn // ignore: cast_nullable_to_non_nullable
              as String?,
      liquidityFrequency: freezed == liquidityFrequency
          ? _value.liquidityFrequency
          : liquidityFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      liquidityValue: freezed == liquidityValue
          ? _value.liquidityValue
          : liquidityValue // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FundFeatureModel>?,
      articlesOfAssociationDocument: freezed == articlesOfAssociationDocument
          ? _value.articlesOfAssociationDocument
          : articlesOfAssociationDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      factSheetDocument: freezed == factSheetDocument
          ? _value.factSheetDocument
          : factSheetDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditionsDocument: freezed == termsAndConditionsDocument
          ? _value.termsAndConditionsDocument
          : termsAndConditionsDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      fundManager: freezed == fundManager
          ? _value.fundManager
          : fundManager // ignore: cast_nullable_to_non_nullable
              as String?,
      navHistory: freezed == navHistory
          ? _value._navHistory
          : navHistory // ignore: cast_nullable_to_non_nullable
              as List<NavHistoryModel>?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconModelBase64?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundDetailsResponseImpl implements _FundDetailsResponse {
  _$FundDetailsResponseImpl(
      {this.id,
      this.name,
      this.description,
      this.nav,
      this.navDate,
      this.returnSinceInception,
      this.inceptionDate,
      this.minInvestment,
      this.annualizedOneWeekReturn,
      this.liquidityFrequency,
      this.liquidityValue,
      final List<FundFeatureModel>? features,
      this.articlesOfAssociationDocument,
      this.factSheetDocument,
      this.termsAndConditionsDocument,
      this.fundManager,
      final List<NavHistoryModel>? navHistory,
      this.icon})
      : _features = features,
        _navHistory = navHistory;

  factory _$FundDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundDetailsResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final num? nav;
  @override
  final DateTime? navDate;
  @override
  final num? returnSinceInception;
  @override
  final DateTime? inceptionDate;
  @override
  final int? minInvestment;
  @override
  final String? annualizedOneWeekReturn;
  @override
  final String? liquidityFrequency;
  @override
  final String? liquidityValue;
  final List<FundFeatureModel>? _features;
  @override
  List<FundFeatureModel>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? articlesOfAssociationDocument;
  @override
  final String? factSheetDocument;
  @override
  final String? termsAndConditionsDocument;
  @override
  final String? fundManager;
  final List<NavHistoryModel>? _navHistory;
  @override
  List<NavHistoryModel>? get navHistory {
    final value = _navHistory;
    if (value == null) return null;
    if (_navHistory is EqualUnmodifiableListView) return _navHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final IconModelBase64? icon;

  @override
  String toString() {
    return 'FundDetailsResponse(id: $id, name: $name, description: $description, nav: $nav, navDate: $navDate, returnSinceInception: $returnSinceInception, inceptionDate: $inceptionDate, minInvestment: $minInvestment, annualizedOneWeekReturn: $annualizedOneWeekReturn, liquidityFrequency: $liquidityFrequency, liquidityValue: $liquidityValue, features: $features, articlesOfAssociationDocument: $articlesOfAssociationDocument, factSheetDocument: $factSheetDocument, termsAndConditionsDocument: $termsAndConditionsDocument, fundManager: $fundManager, navHistory: $navHistory, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundDetailsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.nav, nav) || other.nav == nav) &&
            (identical(other.navDate, navDate) || other.navDate == navDate) &&
            (identical(other.returnSinceInception, returnSinceInception) ||
                other.returnSinceInception == returnSinceInception) &&
            (identical(other.inceptionDate, inceptionDate) ||
                other.inceptionDate == inceptionDate) &&
            (identical(other.minInvestment, minInvestment) ||
                other.minInvestment == minInvestment) &&
            (identical(
                    other.annualizedOneWeekReturn, annualizedOneWeekReturn) ||
                other.annualizedOneWeekReturn == annualizedOneWeekReturn) &&
            (identical(other.liquidityFrequency, liquidityFrequency) ||
                other.liquidityFrequency == liquidityFrequency) &&
            (identical(other.liquidityValue, liquidityValue) ||
                other.liquidityValue == liquidityValue) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.articlesOfAssociationDocument,
                    articlesOfAssociationDocument) ||
                other.articlesOfAssociationDocument ==
                    articlesOfAssociationDocument) &&
            (identical(other.factSheetDocument, factSheetDocument) ||
                other.factSheetDocument == factSheetDocument) &&
            (identical(other.termsAndConditionsDocument,
                    termsAndConditionsDocument) ||
                other.termsAndConditionsDocument ==
                    termsAndConditionsDocument) &&
            (identical(other.fundManager, fundManager) ||
                other.fundManager == fundManager) &&
            const DeepCollectionEquality()
                .equals(other._navHistory, _navHistory) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      nav,
      navDate,
      returnSinceInception,
      inceptionDate,
      minInvestment,
      annualizedOneWeekReturn,
      liquidityFrequency,
      liquidityValue,
      const DeepCollectionEquality().hash(_features),
      articlesOfAssociationDocument,
      factSheetDocument,
      termsAndConditionsDocument,
      fundManager,
      const DeepCollectionEquality().hash(_navHistory),
      icon);

  /// Create a copy of FundDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundDetailsResponseImplCopyWith<_$FundDetailsResponseImpl> get copyWith =>
      __$$FundDetailsResponseImplCopyWithImpl<_$FundDetailsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _FundDetailsResponse implements FundDetailsResponse {
  factory _FundDetailsResponse(
      {final String? id,
      final String? name,
      final String? description,
      final num? nav,
      final DateTime? navDate,
      final num? returnSinceInception,
      final DateTime? inceptionDate,
      final int? minInvestment,
      final String? annualizedOneWeekReturn,
      final String? liquidityFrequency,
      final String? liquidityValue,
      final List<FundFeatureModel>? features,
      final String? articlesOfAssociationDocument,
      final String? factSheetDocument,
      final String? termsAndConditionsDocument,
      final String? fundManager,
      final List<NavHistoryModel>? navHistory,
      final IconModelBase64? icon}) = _$FundDetailsResponseImpl;

  factory _FundDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$FundDetailsResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  num? get nav;
  @override
  DateTime? get navDate;
  @override
  num? get returnSinceInception;
  @override
  DateTime? get inceptionDate;
  @override
  int? get minInvestment;
  @override
  String? get annualizedOneWeekReturn;
  @override
  String? get liquidityFrequency;
  @override
  String? get liquidityValue;
  @override
  List<FundFeatureModel>? get features;
  @override
  String? get articlesOfAssociationDocument;
  @override
  String? get factSheetDocument;
  @override
  String? get termsAndConditionsDocument;
  @override
  String? get fundManager;
  @override
  List<NavHistoryModel>? get navHistory;
  @override
  IconModelBase64? get icon;

  /// Create a copy of FundDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundDetailsResponseImplCopyWith<_$FundDetailsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FundFeatureModel _$FundFeatureModelFromJson(Map<String, dynamic> json) {
  return _FundFeatureModel.fromJson(json);
}

/// @nodoc
mixin _$FundFeatureModel {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  IconModelBase64? get icon => throw _privateConstructorUsedError;

  /// Serializes this FundFeatureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FundFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundFeatureModelCopyWith<FundFeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundFeatureModelCopyWith<$Res> {
  factory $FundFeatureModelCopyWith(
          FundFeatureModel value, $Res Function(FundFeatureModel) then) =
      _$FundFeatureModelCopyWithImpl<$Res, FundFeatureModel>;
  @useResult
  $Res call({String? title, String? description, IconModelBase64? icon});
}

/// @nodoc
class _$FundFeatureModelCopyWithImpl<$Res, $Val extends FundFeatureModel>
    implements $FundFeatureModelCopyWith<$Res> {
  _$FundFeatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconModelBase64?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundFeatureModelImplCopyWith<$Res>
    implements $FundFeatureModelCopyWith<$Res> {
  factory _$$FundFeatureModelImplCopyWith(_$FundFeatureModelImpl value,
          $Res Function(_$FundFeatureModelImpl) then) =
      __$$FundFeatureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, IconModelBase64? icon});
}

/// @nodoc
class __$$FundFeatureModelImplCopyWithImpl<$Res>
    extends _$FundFeatureModelCopyWithImpl<$Res, _$FundFeatureModelImpl>
    implements _$$FundFeatureModelImplCopyWith<$Res> {
  __$$FundFeatureModelImplCopyWithImpl(_$FundFeatureModelImpl _value,
      $Res Function(_$FundFeatureModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$FundFeatureModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconModelBase64?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundFeatureModelImpl implements _FundFeatureModel {
  _$FundFeatureModelImpl({this.title, this.description, this.icon});

  factory _$FundFeatureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundFeatureModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final IconModelBase64? icon;

  @override
  String toString() {
    return 'FundFeatureModel(title: $title, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundFeatureModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, icon);

  /// Create a copy of FundFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundFeatureModelImplCopyWith<_$FundFeatureModelImpl> get copyWith =>
      __$$FundFeatureModelImplCopyWithImpl<_$FundFeatureModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundFeatureModelImplToJson(
      this,
    );
  }
}

abstract class _FundFeatureModel implements FundFeatureModel {
  factory _FundFeatureModel(
      {final String? title,
      final String? description,
      final IconModelBase64? icon}) = _$FundFeatureModelImpl;

  factory _FundFeatureModel.fromJson(Map<String, dynamic> json) =
      _$FundFeatureModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  IconModelBase64? get icon;

  /// Create a copy of FundFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundFeatureModelImplCopyWith<_$FundFeatureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NavHistoryModel _$NavHistoryModelFromJson(Map<String, dynamic> json) {
  return _NavHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$NavHistoryModel {
  double? get nav => throw _privateConstructorUsedError;
  String? get month => throw _privateConstructorUsedError;

  /// Serializes this NavHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NavHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavHistoryModelCopyWith<NavHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavHistoryModelCopyWith<$Res> {
  factory $NavHistoryModelCopyWith(
          NavHistoryModel value, $Res Function(NavHistoryModel) then) =
      _$NavHistoryModelCopyWithImpl<$Res, NavHistoryModel>;
  @useResult
  $Res call({double? nav, String? month});
}

/// @nodoc
class _$NavHistoryModelCopyWithImpl<$Res, $Val extends NavHistoryModel>
    implements $NavHistoryModelCopyWith<$Res> {
  _$NavHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nav = freezed,
    Object? month = freezed,
  }) {
    return _then(_value.copyWith(
      nav: freezed == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as double?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavHistoryModelImplCopyWith<$Res>
    implements $NavHistoryModelCopyWith<$Res> {
  factory _$$NavHistoryModelImplCopyWith(_$NavHistoryModelImpl value,
          $Res Function(_$NavHistoryModelImpl) then) =
      __$$NavHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? nav, String? month});
}

/// @nodoc
class __$$NavHistoryModelImplCopyWithImpl<$Res>
    extends _$NavHistoryModelCopyWithImpl<$Res, _$NavHistoryModelImpl>
    implements _$$NavHistoryModelImplCopyWith<$Res> {
  __$$NavHistoryModelImplCopyWithImpl(
      _$NavHistoryModelImpl _value, $Res Function(_$NavHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nav = freezed,
    Object? month = freezed,
  }) {
    return _then(_$NavHistoryModelImpl(
      nav: freezed == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as double?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NavHistoryModelImpl implements _NavHistoryModel {
  _$NavHistoryModelImpl({this.nav, this.month});

  factory _$NavHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavHistoryModelImplFromJson(json);

  @override
  final double? nav;
  @override
  final String? month;

  @override
  String toString() {
    return 'NavHistoryModel(nav: $nav, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavHistoryModelImpl &&
            (identical(other.nav, nav) || other.nav == nav) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nav, month);

  /// Create a copy of NavHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavHistoryModelImplCopyWith<_$NavHistoryModelImpl> get copyWith =>
      __$$NavHistoryModelImplCopyWithImpl<_$NavHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NavHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _NavHistoryModel implements NavHistoryModel {
  factory _NavHistoryModel({final double? nav, final String? month}) =
      _$NavHistoryModelImpl;

  factory _NavHistoryModel.fromJson(Map<String, dynamic> json) =
      _$NavHistoryModelImpl.fromJson;

  @override
  double? get nav;
  @override
  String? get month;

  /// Create a copy of NavHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavHistoryModelImplCopyWith<_$NavHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
