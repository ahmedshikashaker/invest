import 'package:onboarding/src/features/data/actions/helpers/action_builder.dart';
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/models/field.dart';

/// Extension methods for working with field actions.
extension FieldActionExtensions on Field {
  /// Builds actions for this field for a specific event type.
  ///
  /// [event] - The event type to filter actions by (default: onApply)
  /// [value] - The field value to include in the request
  /// [additionalParams] - Additional parameters to include in the request
  ///
  /// Returns a map of ActionConfig to HttpRequestParams
  Map<ActionConfig, HttpRequestParams> buildActionsFor({
    ActionEvent event = ActionEvent.onApply,
    dynamic value,
    Map<String, dynamic>? additionalParams,
  }) {
    return ActionBuilder.buildActions(
      field: this,
      event: event,
      value: value,
      additionalParams: additionalParams,
    );
  }

  /// Checks if this field has actions for a specific event type.
  ///
  /// [event] - The event type to check for
  bool hasActionsFor(ActionEvent event) {
    return actions?.any((action) => action.event == event) ?? false;
  }

  /// Gets a filtered list of actions for a specific event type.
  ///
  /// [event] - The event type to filter actions by
  List<ActionConfig> getActionsFor(ActionEvent event) {
    return actions?.where((action) => action.event == event).toList() ?? [];
  }
}
