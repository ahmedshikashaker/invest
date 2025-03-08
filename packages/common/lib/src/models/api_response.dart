import 'package:invest_common/src/models/paging_model.dart';
import 'package:common_dependencies/common_dependencies.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class APIResponse<T> {
  final T data;
  final PagingModel? meta;
  const APIResponse({
    required this.data,
    this.meta,
  });

  factory APIResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$APIResponseFromJson(json, fromJsonT);
}
