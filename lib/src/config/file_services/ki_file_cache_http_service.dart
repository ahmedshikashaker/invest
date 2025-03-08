import 'package:common_dependencies/common_dependencies.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:authentication/authentication.dart';

@lazySingleton
class KiFileCacheHttpService extends FileService {
  final Dio dio;

  KiFileCacheHttpService(this.dio);

  @override
  Future<FileServiceResponse> get(String url,
      {Map<String, String>? headers}) async {
    final options = Options(
      responseType: ResponseType.stream,
      headers: {
        if (headers != null) ...headers,
      },
    );

    final dioResponse = await dio.get<ResponseBody>(
      url,
      options: options,
    );
    final streamedResponse = http.StreamedResponse(
      dioResponse.data!.stream,
      dioResponse.statusCode!,
      headers: dioResponse.headers.map
          .map((key, values) => MapEntry(key, values.join(','))),
      contentLength: dioResponse.headers.value('content-length') != null
          ? int.parse(dioResponse.headers.value('content-length')!)
          : null,
      reasonPhrase: dioResponse.statusMessage,
    );

    return HttpGetResponse(streamedResponse);
  }
}
