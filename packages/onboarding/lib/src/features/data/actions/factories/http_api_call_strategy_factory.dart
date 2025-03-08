/// Strategy factory for handling HTTP API calls with different methods and content types.
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/models/action_response.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/delete_json_strategy.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/get_strategy.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/http_request_strategy.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/patch_json_strategy.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/post_form_data_strategy.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/post_json_strategy.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/post_multi_part_strategy.dart';
import 'package:onboarding/src/features/data/actions/strategies/api/put_json_strategy.dart';
import 'package:common_dependencies/common_dependencies.dart';

/// Factory that creates and executes the appropriate HTTP request strategy
/// based on the API action type and content type.
@injectable
class HttpApiCallStrategyFactory {
  final GetStrategy getStrategy;
  final PostJsonStrategy postJsonStrategy;
  final PostFormDataStrategy postFormDataStrategy;
  final PostMultipartStrategy postMultipartStrategy;
  final PutJsonStrategy putJsonStrategy;
  final PatchJsonStrategy patchJsonStrategy;
  final DeleteStrategy deleteStrategy;

  HttpApiCallStrategyFactory(
    this.getStrategy,
    this.postJsonStrategy,
    this.postFormDataStrategy,
    this.postMultipartStrategy,
    this.putJsonStrategy,
    this.patchJsonStrategy,
    this.deleteStrategy,
  );

  /// Executes an HTTP request based on the provided configuration.
  ///
  /// [config] - The API action type configuration
  /// [params] - The HTTP request parameters
  ///
  /// Returns an [ActionResponse] with the result of the HTTP request
  Future<ActionResponse> executeRequest({
    required APIActionTypeConfig config,
    required HttpRequestParams params,
  }) async {
    try {
      // Prepare request parameters by merging config values
      final requestParams = _prepareRequestParams(config, params);

      // Get the appropriate strategy for the request
      final strategy = _getStrategy(config);

      // Execute the request using the selected strategy
      return await strategy.execute(requestParams);
    } catch (e) {
      rethrow;
    }
  }

  /// Prepares request parameters by merging config values with provided params.
  HttpRequestParams _prepareRequestParams(
    APIActionTypeConfig config,
    HttpRequestParams params,
  ) {
    return params.copyWith(
      url: config.url,
      data: _mergeData(params.data, config.extraBodyParams),
      headers: params.headers ?? {},
    );
  }

  /// Merges data from params and extra body params from config.
  Map<String, dynamic> _mergeData(
    Map<String, dynamic>? paramsData,
    Map<String, dynamic>? extraParams,
  ) {
    final mergedData = <String, dynamic>{};

    if (paramsData != null) {
      mergedData.addAll(paramsData);
    }

    if (extraParams != null) {
      mergedData.addAll(extraParams);
    }

    return mergedData;
  }

  /// Gets the appropriate HTTP request strategy based on the API action type config.
  HttpRequestStrategy _getStrategy(APIActionTypeConfig config) {
    return config.map(
      post: (postConfig) => _getPostStrategy(postConfig.contentType),
      get: (_) => getStrategy,
      put: (_) => putJsonStrategy,
      delete: (_) => deleteStrategy,
      patch: (_) => patchJsonStrategy,
    );
  }

  /// Gets the appropriate POST strategy based on the content type.
  HttpRequestStrategy _getPostStrategy(ContentType contentType) {
    switch (contentType) {
      case ContentType.FORM_DATA:
        return postFormDataStrategy;
      case ContentType.MULTIPART_FORM_DATA:
        return postMultipartStrategy;
      case ContentType.JSON:
        return postJsonStrategy;
    }
  }
}
