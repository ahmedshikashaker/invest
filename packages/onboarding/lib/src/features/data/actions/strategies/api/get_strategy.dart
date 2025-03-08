import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/http_request_strategy.dart';
import 'package:common_dependencies/common_dependencies.dart';

/// Strategy for executing HTTP GET requests.
@injectable
class GetStrategy extends BaseHttpRequestStrategy<GetRequestParams> {
  GetStrategy(Dio dio) : super(dio);

  @override
  Future<Response<dynamic>> performRequest(GetRequestParams params) async {
    return await dio.get(
      params.url!,
      queryParameters: params.data,
      options: Options(
        headers: params.headers,
        responseType: ResponseType.json,
      ),
    );
  }
}
