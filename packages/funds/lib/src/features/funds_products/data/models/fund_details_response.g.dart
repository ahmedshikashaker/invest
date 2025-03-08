// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundDetailsResponseImpl _$$FundDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FundDetailsResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      nav: json['nav'] as num?,
      navDate: json['navDate'] == null
          ? null
          : DateTime.parse(json['navDate'] as String),
      returnSinceInception: json['returnSinceInception'] as num?,
      inceptionDate: json['inceptionDate'] == null
          ? null
          : DateTime.parse(json['inceptionDate'] as String),
      minInvestment: (json['minInvestment'] as num?)?.toInt(),
      annualizedOneWeekReturn: json['annualizedOneWeekReturn'] as String?,
      liquidityFrequency: json['liquidityFrequency'] as String?,
      liquidityValue: json['liquidityValue'] as String?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => FundFeatureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      articlesOfAssociationDocument:
          json['articlesOfAssociationDocument'] as String?,
      factSheetDocument: json['factSheetDocument'] as String?,
      termsAndConditionsDocument: json['termsAndConditionsDocument'] as String?,
      fundManager: json['fundManager'] as String?,
      navHistory: (json['navHistory'] as List<dynamic>?)
          ?.map((e) => NavHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      icon: json['icon'] == null
          ? null
          : IconModelBase64.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FundDetailsResponseImplToJson(
        _$FundDetailsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'nav': instance.nav,
      'navDate': instance.navDate?.toIso8601String(),
      'returnSinceInception': instance.returnSinceInception,
      'inceptionDate': instance.inceptionDate?.toIso8601String(),
      'minInvestment': instance.minInvestment,
      'annualizedOneWeekReturn': instance.annualizedOneWeekReturn,
      'liquidityFrequency': instance.liquidityFrequency,
      'liquidityValue': instance.liquidityValue,
      'features': instance.features,
      'articlesOfAssociationDocument': instance.articlesOfAssociationDocument,
      'factSheetDocument': instance.factSheetDocument,
      'termsAndConditionsDocument': instance.termsAndConditionsDocument,
      'fundManager': instance.fundManager,
      'navHistory': instance.navHistory,
      'icon': instance.icon,
    };

_$FundFeatureModelImpl _$$FundFeatureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FundFeatureModelImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] == null
          ? null
          : IconModelBase64.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FundFeatureModelImplToJson(
        _$FundFeatureModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
    };

_$NavHistoryModelImpl _$$NavHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavHistoryModelImpl(
      nav: (json['nav'] as num?)?.toDouble(),
      month: json['month'] as String?,
    );

Map<String, dynamic> _$$NavHistoryModelImplToJson(
        _$NavHistoryModelImpl instance) =>
    <String, dynamic>{
      'nav': instance.nav,
      'month': instance.month,
    };
