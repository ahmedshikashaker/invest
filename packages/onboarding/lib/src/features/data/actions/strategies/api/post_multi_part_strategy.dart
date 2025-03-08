import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/http_request_strategy.dart';
import 'package:common_dependencies/common_dependencies.dart';

// Concrete POST multipart strategy
@injectable
class PostMultipartStrategy
    extends BaseHttpRequestStrategy<MultipartRequestParams> {
  PostMultipartStrategy(Dio dio) : super(dio);

  @override
  Future<Response> performRequest(MultipartRequestParams params) async {
    final formData = FormData();

    // Add all fields
    params.data?.forEach((key, value) {
      formData.fields.add(MapEntry(key, value.toString()));
    });

    // Add files if available
    if (params.files != null && params.files!.isNotEmpty) {
      for (int i = 0; i < params.files!.length; i++) {
        formData.files.add(MapEntry(
          'file${i > 0 ? i : ''}', // Use 'file', 'file1', 'file2', etc.
          params.files![i],
        ));
      }
    }

    return await dio.post(
      params.url ?? '',
      data: formData,
      options: Options(
        headers: params.headers,
        contentType: 'multipart/form-data',
      ),
    );
  }
}
