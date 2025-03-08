// Concrete PATCH JSON strategy
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/http_request_strategy.dart';
import 'package:common_dependencies/common_dependencies.dart';

// Concrete PATCH JSON strategy
@injectable
class PatchJsonStrategy extends BaseHttpRequestStrategy<JsonRequestParams> {
  PatchJsonStrategy(Dio dio) : super(dio);

  @override
  Future<Response> performRequest(JsonRequestParams params) async {
    return await dio.patch(
      params.url ?? '',
      data: params.data,
      options: Options(
        headers: params.headers,
        contentType: 'application/json',
      ),
    );
  }
}
