import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/data/actions/handlers/action_handler.dart';
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/extensions/field_action_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:kib_core/kib_core.dart';

/// A mixin that provides action handling capabilities to a bloc.
///
/// This mixin is intended to be used with a [BlocBase] that maintains a state of type [SectionState].
/// It provides methods for handling actions triggered by user interactions.
mixin ActionMixin on BlocBase<SectionState> {
  final _actionHandler = getIt<ActionHandler>();

  /// Handles a collection of actions to be executed.
  ///
  /// [actions] - Map of action configurations to their parameters
  Future<void> handleActions(
      Map<ActionConfig, HttpRequestParams> actions) async {
    if (actions.isEmpty) return;

    try {
      // Set loading state if needed
      _setLoadingStateIfNeeded(actions);

      // Execute actions
      await _actionHandler.executeActions(
        actions: actions,
        fields: fields,
      );

      // Reset loading state if needed
      _resetLoadingStateIfNeeded();
    } catch (e) {
      // Reset loading state and emit error state
      emit(SectionState.error(error: e.toString()));
    }
  }

  /// Handles a single action to be executed.
  ///
  /// [actionConfig] - The configuration for the action to execute
  /// [params] - The parameters for the action
  Future<void> handleAction({
    required ActionConfig actionConfig,
    required HttpRequestParams params,
  }) async {
    try {
      // Set loading state if needed
      _setLoadingStateIfNeeded({actionConfig: params});

      // Execute action
      await _actionHandler.executeAction(
        actionConfig: actionConfig,
        params: params,
        fields: fields,
      );

      // Reset loading state if needed
      _resetLoadingStateIfNeeded();
    } catch (e) {
      // Reset loading state and emit error state
      emit(SectionState.error(error: e.toString()));
    }
  }

  /// Handles actions for a specific field and event.
  /// This is a convenience method for UI components.
  ///
  /// [field] - The field containing the actions
  /// [event] - The event type triggering the actions
  /// [value] - The current value of the field
  /// [additionalParams] - Any additional parameters to include in the request
  Future<void> handleFieldActions({
    required Field field,
    ActionEvent event = ActionEvent.onApply,
    dynamic value,
    Map<String, dynamic>? additionalParams,
  }) async {
    if (!field.hasActionsFor(event)) return;

    final actions = field.buildActionsFor(
      event: event,
      value: value,
      additionalParams: additionalParams,
    );

    await handleActions(actions);
  }

  /// Handles file upload for a field.
  /// This is a convenience method for file and signature fields.
  ///
  /// [field] - The field containing the actions
  /// [file] - The file to upload
  /// [additionalParams] - Any additional parameters to include in the request
  Future<void> handleFileUpload({
    required Field field,
    required dynamic file,
    ActionEvent event = ActionEvent.onApply,
    Map<String, dynamic>? additionalParams,
  }) async {
    if (!field.hasActionsFor(event)) return;

    final actions = field.buildActionsFor(
      value: file,
      additionalParams: additionalParams,
    );

    await handleActions(actions);
  }

  /// Sets the loading state if the actions require it.
  void _setLoadingStateIfNeeded(Map<ActionConfig, HttpRequestParams> actions) {
    // Check if we're uploading files or making API calls
    final hasApiCalls =
        actions.keys.any((action) => action is ActionConfigAPICall);

    if (hasApiCalls) {
      emit(SectionState.loadingAction());
    }
  }

  /// Resets the loading state if needed.
  void _resetLoadingStateIfNeeded() {
    // Check the current state
    state.maybeMap(
      loadingAction: (_) => emit(SectionState.loadedAction()),
      orElse: () => {}, // Do nothing for other states
    );
  }

  /// The list of fields that may be updated by actions.
  List<Field> get fields;
}
