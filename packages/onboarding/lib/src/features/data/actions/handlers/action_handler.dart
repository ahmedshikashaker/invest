import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/data/actions/factories/action_config_factory.dart';
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/actions/models/action_response.dart';
import 'package:onboarding/src/features/data/extensions/action_field_update_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/domain/managers/answers_manager.dart';
import 'package:collection/collection.dart';

/// A class that handles the execution of actions and processing their responses.
@injectable
class ActionHandler {
  final ActionConfigFactory _actionConfigFactory;
  final AnswersManager _answersManager;

  ActionHandler(
    this._actionConfigFactory,
    this._answersManager,
  );

  /// Executes a single action with the given parameters.
  ///
  /// [actionConfig] - The configuration for the action to execute
  /// [params] - The parameters for the action
  /// [fields] - The form fields that may be updated by the action's response
  Future<void> executeAction({
    required ActionConfig actionConfig,
    required HttpRequestParams params,
    required List<Field> fields,
  }) async {
    try {
      final response = await _actionConfigFactory.execute(
        actionConfig: actionConfig,
        params: params,
      );

      _processResponse(response, fields);
    } catch (e) {
      // Re-throw to allow the caller to handle the error
      rethrow;
    }
  }

  /// Executes multiple actions in parallel.
  ///
  /// [actions] - Map of action configurations to their parameters
  /// [fields] - The form fields that may be updated by the actions' responses
  Future<void> executeActions({
    required Map<ActionConfig, HttpRequestParams> actions,
    required List<Field> fields,
  }) async {
    if (actions.isEmpty) {
      return;
    }

    try {
      final futures = actions.entries.map((entry) async {
        try {
          final response = await _actionConfigFactory.execute(
            actionConfig: entry.key,
            params: entry.value,
          );

          _processResponse(response, fields);
        } catch (e) {
          // We catch here to prevent one action failure from affecting others
        }
      }).toList();

      await Future.wait(futures);
    } catch (e) {
      rethrow;
    }
  }

  /// Processes a response from an action execution.
  ///
  /// [response] - The response from the action execution
  /// [fields] - The form fields that may be updated by the response
  void _processResponse(ActionResponse response, List<Field> fields) {
    response.data.map(
      updateFieldsValues: (data) => _processFieldUpdates(data.payload, fields),
      redirect: (data) => print('Redirect action: ${data.url}'),
      showMessage: (data) => print('Show message: ${data.message}'),
      triggerAction: (data) => print('Trigger action: ${data.actionId}'),
    );
  }

  /// Processes field updates from an action response.
  ///
  /// [updates] - The field updates to process
  /// [fields] - The form fields to update
  void _processFieldUpdates(List<FieldUpdate> updates, List<Field> fields) {
    for (final update in updates) {
      try {
        // Find the field being updated
        final field = fields.firstWhereOrNull((field) => field.id == update.id);

        // Parse and apply the update
        final parsedValue = update.parseValueForField(field);

        // Update the answer in the manager
        _answersManager.updateAnswer(update.id, parsedValue);
      } catch (e) {}
    }
  }
}
