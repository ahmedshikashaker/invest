import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invest_common/common.dart';

part 'fund_model_response.freezed.dart';

part 'fund_model_response.g.dart';

@freezed
class FundModelResponse with _$FundModelResponse {
  factory FundModelResponse({
    String? id,
    String? name,
    int? nav,
    DateTime? navDate,
    int? returnSinceInception,
    DateTime? inceptionDate,
    int? minInvestment,
    String? annualizedOneWeekReturn,
    IconModelBase64? icon,
  }) = _FundModelResponse;

  factory FundModelResponse.fromJson(Map<String, dynamic> json) =>
      _$FundModelResponseFromJson(json);
}
