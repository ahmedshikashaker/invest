import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/http_request_strategy.dart';
import 'package:common_dependencies/common_dependencies.dart';

// Concrete POST form data strategy
@injectable
class PostFormDataStrategy
    extends BaseHttpRequestStrategy<FormDataRequestParams> {
  PostFormDataStrategy(Dio dio) : super(dio);

  @override
  Future<Response> performRequest(FormDataRequestParams params) async {
    final formData = params.data?.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value.toString())}')
        .join('&');

    return await dio.post(
      params.url ?? '',
      data: formData,
      options: Options(
          headers: params.headers,
          contentType: 'application/x-www-form-urlencoded'),
    );
  }
}
