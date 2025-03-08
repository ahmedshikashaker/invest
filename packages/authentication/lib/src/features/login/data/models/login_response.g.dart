// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      refreshExpiresIn: (json['refreshExpiresIn'] as num?)?.toInt(),
      tokenType: json['tokenType'] as String?,
      scope: json['scope'] as String?,
      sessionState: json['sessionState'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      civilIdInfo: json['civilIdInfo'] == null
          ? null
          : CivilIdInfoModel.fromJson(
              json['civilIdInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
      'refreshExpiresIn': instance.refreshExpiresIn,
      'tokenType': instance.tokenType,
      'scope': instance.scope,
      'sessionState': instance.sessionState,
      'user': instance.user,
      'civilIdInfo': instance.civilIdInfo,
    };

CivilIdInfoModel _$CivilIdInfoModelFromJson(Map<String, dynamic> json) =>
    CivilIdInfoModel(
      civilId: json['civilId'] as String?,
      civilIdVerified: json['civilIdVerified'] as bool?,
      civilIdExpiryDate: json['civilIdExpiryDate'] == null
          ? null
          : DateTime.parse(json['civilIdExpiryDate'] as String),
      paciStatus:
          $enumDecodeNullable(_$PaciAuthStatusEnumMap, json['paciStatus']),
    );

Map<String, dynamic> _$CivilIdInfoModelToJson(CivilIdInfoModel instance) =>
    <String, dynamic>{
      'civilId': instance.civilId,
      'civilIdVerified': instance.civilIdVerified,
      'civilIdExpiryDate': instance.civilIdExpiryDate?.toIso8601String(),
      'paciStatus': _$PaciAuthStatusEnumMap[instance.paciStatus],
    };

const _$PaciAuthStatusEnumMap = {
  PaciAuthStatus.notLinked: 'NOT_LINKED',
  PaciAuthStatus.initiated: 'INITIATED',
  PaciAuthStatus.approved: 'APPROVED',
  PaciAuthStatus.rejected: 'REJECTED',
};

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      refreshExpiresIn: (json['refreshExpiresIn'] as num?)?.toInt(),
      tokenType: json['tokenType'] as String?,
      scope: json['scope'] as String?,
      sessionState: json['sessionState'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
      'refreshExpiresIn': instance.refreshExpiresIn,
      'tokenType': instance.tokenType,
      'scope': instance.scope,
      'sessionState': instance.sessionState,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      isPasswordSet: json['isPasswordSet'] as bool?,
      isProfileCompleted: json['isProfileCompleted'] as bool?,
      id: json['id'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      civilId: json['civilId'] as String?,
      civilIdExpiryDate: json['civilIdExpiryDate'] as String?,
      paciStatus:
          $enumDecodeNullable(_$PaciAuthStatusEnumMap, json['paciStatus']),
      fullName: json['fullName'] as String?,
      nationality: json['nationality'] as String?,
      nationalNumber: json['nationalNumber'] as String?,
      placeOfBirth: json['placeOfBirth'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      area: json['area'] as String?,
      block: json['block'] as String?,
      houseNumber: json['houseNumber'] as String?,
      flatNumber: json['flatNumber'] as String?,
      employerName: json['employerName'] as String?,
      employmentSector: json['employmentSector'] as String?,
      profession: json['profession'] as String?,
      monthlyIncome: (json['monthlyIncome'] as num?)?.toDouble(),
      otherYearlyIncome: (json['otherYearlyIncome'] as num?)?.toDouble(),
      bankCode: json['bankCode'] as String?,
      averageYearlyIncome: (json['averageYearlyIncome'] as num?)?.toDouble(),
      transactionFrequency: json['transactionFrequency'] as String?,
      expectedNumberOfTransactions:
          (json['expectedNumberOfTransactions'] as num?)?.toDouble(),
      expectedValueOfTransactions:
          (json['expectedValueOfTransactions'] as num?)?.toDouble(),
      profilePictureId: json['profilePictureId'] as String?,
      isBiometricEnabled: json['isBiometricEnabled'] as bool?,
      appLanguage: json['appLanguage'] as String?,
      sourcesOfIncome: (json['sourcesOfIncome'] as List<dynamic>?)
          ?.map((e) => SourcesOfIncome.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'civilId': instance.civilId,
      'civilIdExpiryDate': instance.civilIdExpiryDate,
      'paciStatus': _$PaciAuthStatusEnumMap[instance.paciStatus],
      'fullName': instance.fullName,
      'nationality': instance.nationality,
      'nationalNumber': instance.nationalNumber,
      'placeOfBirth': instance.placeOfBirth,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'city': instance.city,
      'area': instance.area,
      'block': instance.block,
      'houseNumber': instance.houseNumber,
      'flatNumber': instance.flatNumber,
      'employerName': instance.employerName,
      'employmentSector': instance.employmentSector,
      'profession': instance.profession,
      'monthlyIncome': instance.monthlyIncome,
      'otherYearlyIncome': instance.otherYearlyIncome,
      'bankCode': instance.bankCode,
      'averageYearlyIncome': instance.averageYearlyIncome,
      'transactionFrequency': instance.transactionFrequency,
      'expectedNumberOfTransactions': instance.expectedNumberOfTransactions,
      'expectedValueOfTransactions': instance.expectedValueOfTransactions,
      'profilePictureId': instance.profilePictureId,
      'isBiometricEnabled': instance.isBiometricEnabled,
      'appLanguage': instance.appLanguage,
      'sourcesOfIncome': instance.sourcesOfIncome,
      'isPasswordSet': instance.isPasswordSet,
      'isProfileCompleted': instance.isProfileCompleted,
    };

SourcesOfIncome _$SourcesOfIncomeFromJson(Map<String, dynamic> json) =>
    SourcesOfIncome(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SourcesOfIncomeToJson(SourcesOfIncome instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
