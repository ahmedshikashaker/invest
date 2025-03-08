import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/http_request_strategy.dart';
import 'package:common_dependencies/common_dependencies.dart';

@injectable
class PostJsonStrategy extends BaseHttpRequestStrategy<JsonRequestParams> {
  PostJsonStrategy(Dio dio) : super(dio);

  @override
  Future<Response> performRequest(JsonRequestParams params) async {
    return await dio.post(
      params.url ?? '',
      data: params.data,
      options: Options(
        headers: params.headers,
        contentType: 'application/json',
      ),
    );
  }
}
