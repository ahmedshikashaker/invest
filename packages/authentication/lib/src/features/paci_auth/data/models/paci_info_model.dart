import 'package:freezed_annotation/freezed_annotation.dart';

part 'paci_info_model.freezed.dart';

part 'paci_info_model.g.dart';

enum PaciAuthStatus {
  @JsonValue("NOT_LINKED")
  notLinked,
  @JsonValue("INITIATED")
  initiated,
  @JsonValue("APPROVED")
  approved,
  @JsonValue("REJECTED")
  rejected;
}

@freezed
class PaciInfoModel with _$PaciInfoModel {
  factory PaciInfoModel({
    String? civilId,
    bool? civilIdVerified,
    DateTime? civilIdExpiryDate,
    @Default(PaciAuthStatus.notLinked)PaciAuthStatus? paciStatus,
    String? nameEn,
    String? nameAr,
    DateTime? dateOfBirth,
    String? nationality,
    String? countryCode,
    String? gender,
    String? address,
    String? status,
  }) = _PaciInfoModel;

  factory PaciInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PaciInfoModelFromJson(json);
}
