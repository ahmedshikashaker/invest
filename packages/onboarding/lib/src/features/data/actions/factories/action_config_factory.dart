import 'package:onboarding/src/features/data/actions/factories/http_api_call_strategy_factory.dart';
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/models/action_response.dart';
import 'package:common_dependencies/common_dependencies.dart';

/// Factory for executing different types of actions based on their configuration.
/// Acts as the main entry point for executing actions in the application.
@injectable
class ActionConfigFactory {
  final HttpApiCallStrategyFactory httpApiCallStrategyFactory;

  ActionConfigFactory(
    this.httpApiCallStrategyFactory,
  );

  /// Executes an action based on its configuration and returns the response.
  /// 
  /// [actionConfig] - The configuration for the action to execute
  /// [params] - The parameters to use when executing the action
  /// 
  /// Returns an [ActionResponse] with the result of the action execution
  Future<ActionResponse> execute({
    required ActionConfig actionConfig,
    required HttpRequestParams params,
  }) async {
    try {

      return await actionConfig.map(
        ApiCall: (apiCallConfig) => _executeApiCall(apiCallConfig, params),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Executes an API call action.
  Future<ActionResponse> _executeApiCall(
    ActionConfigAPICall apiCallConfig, 
    HttpRequestParams params,
  ) async {
    return httpApiCallStrategyFactory.executeRequest(
      config: apiCallConfig.config,
      params: params,
    );
  }
}
