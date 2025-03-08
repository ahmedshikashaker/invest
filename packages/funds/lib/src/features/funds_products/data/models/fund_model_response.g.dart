// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundModelResponseImpl _$$FundModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FundModelResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      nav: (json['nav'] as num?)?.toInt(),
      navDate: json['navDate'] == null
          ? null
          : DateTime.parse(json['navDate'] as String),
      returnSinceInception: (json['returnSinceInception'] as num?)?.toInt(),
      inceptionDate: json['inceptionDate'] == null
          ? null
          : DateTime.parse(json['inceptionDate'] as String),
      minInvestment: (json['minInvestment'] as num?)?.toInt(),
      annualizedOneWeekReturn: json['annualizedOneWeekReturn'] as String?,
      icon: json['icon'] == null
          ? null
          : IconModelBase64.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FundModelResponseImplToJson(
        _$FundModelResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nav': instance.nav,
      'navDate': instance.navDate?.toIso8601String(),
      'returnSinceInception': instance.returnSinceInception,
      'inceptionDate': instance.inceptionDate?.toIso8601String(),
      'minInvestment': instance.minInvestment,
      'annualizedOneWeekReturn': instance.annualizedOneWeekReturn,
      'icon': instance.icon,
    };
