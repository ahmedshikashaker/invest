import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/http_request_strategy.dart';
import 'package:common_dependencies/common_dependencies.dart';

// Concrete DELETE strategy
@injectable
class DeleteStrategy extends BaseHttpRequestStrategy<JsonRequestParams> {
  DeleteStrategy(Dio dio) : super(dio);

  @override
  Future<Response<dynamic>> performRequest(JsonRequestParams params) async {
    return await dio.delete(
      params.url ?? '',
      data: params.data,
      options: Options(
        headers: params.headers,
      ),
    );
  }
}
