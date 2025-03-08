import 'package:common_dependencies/common_dependencies.dart';
part 'action_param.freezed.dart';

@freezed
class HttpRequestParams with _$HttpRequestParams {
  // Base abstract class
  const HttpRequestParams._();

  // GET request parameters
  const factory HttpRequestParams.get({
     String? url,
     Map<String, dynamic>? data,
    Map<String, String>? headers,
  }) = GetRequestParams;

  // POST/PUT/PATCH JSON request parameters
  const factory HttpRequestParams.json({
     String? url,
     Map<String, dynamic>? data,
    Map<String, String>? headers,
  }) = JsonRequestParams;

  // Form data request parameters
  const factory HttpRequestParams.formData({
     String? url,
     Map<String, dynamic>? data,
    Map<String, String>? headers,
  }) = FormDataRequestParams;

  // Multipart request parameters
  const factory HttpRequestParams.multipart({
     String? url,
     Map<String, dynamic>? data,
    List<MultipartFile>? files,
    Map<String, String>? headers,
  }) = MultipartRequestParams;
}