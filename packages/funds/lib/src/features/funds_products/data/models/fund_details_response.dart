import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invest_common/common.dart';

part 'fund_details_response.freezed.dart';

part 'fund_details_response.g.dart';

@freezed
class FundDetailsResponse with _$FundDetailsResponse {
  factory FundDetailsResponse({
    String? id,
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
    IconModelBase64? icon,
  }) = _FundDetailsResponse;

  factory FundDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$FundDetailsResponseFromJson(json);
}

@freezed
class FundFeatureModel with _$FundFeatureModel {
  factory FundFeatureModel({
    String? title,
    String? description,
    IconModelBase64? icon,
  }) = _FundFeatureModel;

  factory FundFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FundFeatureModelFromJson(json);
}

@freezed
class NavHistoryModel with _$NavHistoryModel {
  factory NavHistoryModel({
    double? nav,
    String? month,
  }) = _NavHistoryModel;

  factory NavHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$NavHistoryModelFromJson(json);
}
