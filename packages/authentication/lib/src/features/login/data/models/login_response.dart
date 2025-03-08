import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';


@JsonSerializable()
class LoginResponseModel {
  final String? accessToken;
  final String? refreshToken;
  final int? expiresIn;
  final int? refreshExpiresIn;
  final String? tokenType;
  final String? scope;
  final String? sessionState;
  final User? user;
  final CivilIdInfoModel? civilIdInfo;


  LoginResponseModel({
    this.accessToken, this.refreshToken, this.expiresIn, this.refreshExpiresIn, this.tokenType, this.scope, this.sessionState, this.user, this.civilIdInfo,});


  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class CivilIdInfoModel {
  final String? civilId;
  final bool? civilIdVerified;
  final DateTime? civilIdExpiryDate;
  final PaciAuthStatus? paciStatus;


  CivilIdInfoModel({
    this.civilId, this.civilIdVerified, this.civilIdExpiryDate, this.paciStatus,

  });

  factory CivilIdInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CivilIdInfoModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CivilIdInfoModelToJson(this);
}

@JsonSerializable()
class LoginData {
  final String? accessToken;
  final String? refreshToken;
  final int? expiresIn;
  final int? refreshExpiresIn;
  final String? tokenType;
  final String? scope;
  final String? sessionState;
  final User? user;

  LoginData({
    this.accessToken, this.refreshToken, this.expiresIn, this.refreshExpiresIn, this.tokenType, this.scope, this.sessionState, this.user,});


  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LoginDataToJson(this);
}

@JsonSerializable()
class User {
  final String? id;
  final String? phoneNumber;
  final String? email;
  final String? civilId;
  final String? civilIdExpiryDate;
  final PaciAuthStatus? paciStatus;
  final String? fullName;
  final String? nationality;
  final String? nationalNumber;
  final String? placeOfBirth;
  final String? dateOfBirth;
  final String? gender;
  final String? city;
  final String? area;
  final String? block;
  final String? houseNumber;
  final String? flatNumber;
  final String? employerName;
  final String? employmentSector;
  final String? profession;
  final double? monthlyIncome;
  final double? otherYearlyIncome;
  final String? bankCode;
  final double? averageYearlyIncome;
  final String? transactionFrequency;
  final double? expectedNumberOfTransactions;
  final double? expectedValueOfTransactions;
  final String? profilePictureId;
  final bool? isBiometricEnabled;
  final String? appLanguage;
  final List<SourcesOfIncome>? sourcesOfIncome;
  final bool? isPasswordSet;
  final bool? isProfileCompleted;

  User({ this.isPasswordSet, this.isProfileCompleted,
    this.id, this.phoneNumber, this.email, this.civilId, this.civilIdExpiryDate, this.paciStatus, this.fullName, this.nationality, this.nationalNumber, this.placeOfBirth, this.dateOfBirth, this.gender, this.city, this.area, this.block, this.houseNumber, this.flatNumber, this.employerName, this.employmentSector, this.profession, this.monthlyIncome, this.otherYearlyIncome, this.bankCode, this.averageYearlyIncome, this.transactionFrequency, this.expectedNumberOfTransactions, this.expectedValueOfTransactions, this.profilePictureId, this.isBiometricEnabled, this.appLanguage, this.sourcesOfIncome,});


  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UserToJson(this);
}

@JsonSerializable()
class SourcesOfIncome {
  final String? id;
  final String? name;
  final String? description;


  SourcesOfIncome({
    this.id, this.name, this.description,});


  factory SourcesOfIncome.fromJson(Map<String, dynamic> json) =>
      _$SourcesOfIncomeFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SourcesOfIncomeToJson(this);
}

