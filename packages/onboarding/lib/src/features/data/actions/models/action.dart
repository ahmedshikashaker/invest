import 'package:common_dependencies/common_dependencies.dart';

part 'action.freezed.dart';
part 'action.g.dart';

/// Configuration for an action to be executed.
/// Actions can be triggered by different events (onChange, onApply) and
/// can execute different types of operations (API calls, etc.).
@Freezed(unionKey: 'type')
class ActionConfig with _$ActionConfig {
  /// API call action configuration.
  /// Used to make HTTP requests to an API.
  @FreezedUnionValue('API_CALL')
  const factory ActionConfig.ApiCall({
    @Default(ActionEvent.onApply)
    @JsonKey(unknownEnumValue: ActionEvent.onApply)
    ActionEvent event,
    required APIActionTypeConfig config,
  }) = ActionConfigAPICall;

  factory ActionConfig.fromJson(Map<String, dynamic> json) =>
      _$ActionConfigFromJson(json);
}

/// Configuration for different API action types (GET, POST, PUT, etc.).
/// Each type has its own configuration with method-specific parameters.
@Freezed(unionKey: 'method')
class APIActionTypeConfig with _$APIActionTypeConfig {
  /// POST request configuration.
  /// Used for creating resources.
  @FreezedUnionValue("POST")
  const factory APIActionTypeConfig.post({
    required String url,
    @Default(ContentType.JSON)
    @JsonKey(unknownEnumValue: ContentType.JSON)
    ContentType contentType,
    Map<String, dynamic>? extraBodyParams,
  }) = _APIActionTypeConfigPost;

  /// GET request configuration.
  /// Used for retrieving resources.
  @FreezedUnionValue("GET")
  const factory APIActionTypeConfig.get({
    required String url,
    @Default(ContentType.JSON) ContentType contentType,
    Map<String, dynamic>? extraBodyParams,
  }) = _APIActionTypeConfigGet;

  /// PUT request configuration.
  /// Used for updating resources by replacing them entirely.
  @FreezedUnionValue("PUT")
  const factory APIActionTypeConfig.put({
    required String url,
    @Default(ContentType.JSON) ContentType contentType,
    Map<String, dynamic>? extraBodyParams,
  }) = _APIActionTypeConfigPut;

  /// DELETE request configuration.
  /// Used for deleting resources.
  @FreezedUnionValue("DELETE")
  const factory APIActionTypeConfig.delete({
    required String url,
    @Default(ContentType.JSON) ContentType contentType,
    Map<String, dynamic>? extraBodyParams,
  }) = _APIActionTypeConfigDelete;

  /// PATCH request configuration.
  /// Used for updating resources partially.
  @FreezedUnionValue("PATCH")
  const factory APIActionTypeConfig.patch({
    required String url,
    @Default(ContentType.JSON) ContentType contentType,
    Map<String, dynamic>? extraBodyParams,
  }) = _APIActionTypeConfigPatch;

  factory APIActionTypeConfig.fromJson(Map<String, dynamic> json) =>
      _$APIActionTypeConfigFromJson(json);
}

/// Content types for HTTP requests.
enum ContentType {
  /// JSON content type (application/json).
  /// Used for sending and receiving JSON data.
  @JsonValue("application/json")
  JSON,
  
  /// Form data content type (application/x-www-form-urlencoded).
  /// Used for sending form data encoded in the URL.
  @JsonValue("application/x-www-form-urlencoded")
  FORM_DATA,
  
  /// Multipart form data content type (multipart/form-data).
  /// Used for sending form data with files.
  @JsonValue("multipart/form-data")
  MULTIPART_FORM_DATA
}

/// Events that can trigger actions.
enum ActionEvent {
  /// Action triggered when the field is submitted/applied.
  @JsonValue("ON_APPLY")
  onApply,
  
  /// Action triggered when the field value changes.
  @JsonValue("ON_CHANGE")
  onChange
}
