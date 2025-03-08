// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paci_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaciInfoModelImpl _$$PaciInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$PaciInfoModelImpl(
      civilId: json['civilId'] as String?,
      civilIdVerified: json['civilIdVerified'] as bool?,
      civilIdExpiryDate: json['civilIdExpiryDate'] == null
          ? null
          : DateTime.parse(json['civilIdExpiryDate'] as String),
      paciStatus:
          $enumDecodeNullable(_$PaciAuthStatusEnumMap, json['paciStatus']) ??
              PaciAuthStatus.notLinked,
      nameEn: json['nameEn'] as String?,
      nameAr: json['nameAr'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      nationality: json['nationality'] as String?,
      countryCode: json['countryCode'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$PaciInfoModelImplToJson(_$PaciInfoModelImpl instance) =>
    <String, dynamic>{
      'civilId': instance.civilId,
      'civilIdVerified': instance.civilIdVerified,
      'civilIdExpiryDate': instance.civilIdExpiryDate?.toIso8601String(),
      'paciStatus': _$PaciAuthStatusEnumMap[instance.paciStatus],
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'nationality': instance.nationality,
      'countryCode': instance.countryCode,
      'gender': instance.gender,
      'address': instance.address,
      'status': instance.status,
    };

const _$PaciAuthStatusEnumMap = {
  PaciAuthStatus.notLinked: 'NOT_LINKED',
  PaciAuthStatus.initiated: 'INITIATED',
  PaciAuthStatus.approved: 'APPROVED',
  PaciAuthStatus.rejected: 'REJECTED',
};
