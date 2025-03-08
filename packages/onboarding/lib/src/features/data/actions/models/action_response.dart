import 'package:common_dependencies/common_dependencies.dart';
part 'action_response.freezed.dart';
part 'action_response.g.dart';

/// Response from an action execution.
/// Contains data that can be used to update the UI or trigger other actions.
@freezed
class ActionResponse with _$ActionResponse {
  /// Creates an action response with data.
  const factory ActionResponse({
    required ActionResponseData data,
  }) = _ActionResponse;

  /// Creates an action response from JSON.
  factory ActionResponse.fromJson(Map<String, dynamic> json) =>
      _$ActionResponseFromJson(json);
      
  /// Creates an empty action response.
  factory ActionResponse.empty() => const ActionResponse(
    data: ActionResponseData.updateFieldsValues(payload: []),
  );
}

/// Data contained in an action response.
/// The type determines how the data is processed.
@Freezed(unionKey: 'type')
class ActionResponseData with _$ActionResponseData {
  /// Updates field values in the form.
  @FreezedUnionValue('UPDATE_FIELDS_VALUES')
  const factory ActionResponseData.updateFieldsValues({
    required List<FieldUpdate> payload,
  }) = UpdateFieldsValuesData;

  /// Redirects to another screen or URL.
  @FreezedUnionValue('REDIRECT')
  const factory ActionResponseData.redirect({
    required String url,
    @Default(false) bool external,
  }) = RedirectData;
  
  /// Shows a message to the user.
  @FreezedUnionValue('SHOW_MESSAGE')
  const factory ActionResponseData.showMessage({
    required String message,
    @Default('info') String type,
  }) = ShowMessageData;
  
  /// Triggers another action.
  @FreezedUnionValue('TRIGGER_ACTION')
  const factory ActionResponseData.triggerAction({
    required String actionId,
    Map<String, dynamic>? params,
  }) = TriggerActionData;

  /// Creates an action response data from JSON.
  factory ActionResponseData.fromJson(Map<String, dynamic> json) =>
      _$ActionResponseDataFromJson(json);
}

/// Update to a field value.
@freezed
class FieldUpdate with _$FieldUpdate {
  /// Creates a field update.
  const factory FieldUpdate({
    required String id,
    required dynamic value,
  }) = _FieldUpdate;

  /// Creates a field update from JSON.
  factory FieldUpdate.fromJson(Map<String, dynamic> json) =>
      _$FieldUpdateFromJson(json);
}
