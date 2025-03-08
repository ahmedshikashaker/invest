import 'package:dio/dio.dart';
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/models/action_response.dart';

/// Base interface for HTTP request strategies using the Strategy pattern.
/// Each strategy handles a specific HTTP method and content type.
abstract class HttpRequestStrategy<T extends HttpRequestParams> {
  /// Executes an HTTP request using the given parameters.
  ///
  /// [params] - The parameters for the HTTP request
  ///
  /// Returns an [ActionResponse] with the result of the HTTP request
  Future<ActionResponse> execute(T params);

  /// Validates the request parameters before execution.
  /// Throws an exception if the parameters are invalid.
  void validateParams(T params);

  /// Parses the HTTP response to an [ActionResponse].
  ///
  /// [response] - The HTTP response to parse
  Future<ActionResponse> parseResponse(Response<dynamic> response);
}

/// Base implementation of [HttpRequestStrategy] with common functionality.
abstract class BaseHttpRequestStrategy<T extends HttpRequestParams>
    implements HttpRequestStrategy<T> {
  final Dio dio;

  BaseHttpRequestStrategy(this.dio);

  @override
  Future<ActionResponse> execute(T params) async {
    try {
      validateParams(params);

      final response = await performRequest(params);

      return parseResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  void validateParams(T params) {
    if (params.url == null || params.url!.isEmpty) {
      throw ArgumentError('URL is required for HTTP request');
    }
  }

  /// Performs the actual HTTP request.
  ///
  /// [params] - The parameters for the HTTP request
  Future<Response<dynamic>> performRequest(T params);

  @override
  Future<ActionResponse> parseResponse(Response<dynamic> response) async {
    try {
      final dynamic data = response.data;

      if (data == null) {
        return const ActionResponse(
          data: ActionResponseData.updateFieldsValues(payload: []),
        );
      }

      if (data is Map<String, dynamic>) {
        return ActionResponse.fromJson(data);
      }

      throw FormatException('Unexpected response format: ${data.runtimeType}');
    } catch (e) {
      // Fallback to empty response
      return const ActionResponse(
        data: ActionResponseData.updateFieldsValues(payload: []),
      );
    }
  }
}
