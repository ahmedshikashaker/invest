import 'dart:typed_data';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/actions/models/action_param.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:kib_design_system/kib_design_system.dart';

/// Builder class for creating and configuring field actions.
/// Simplifies the process of preparing actions for execution from UI components.
class ActionBuilder {
  /// Builds a map of actions and their parameters for a specific event type.
  ///
  /// [field] - The field containing the actions
  /// [event] - The event type to filter actions by (default: onApply)
  /// [value] - The field value to include in the request
  /// [additionalParams] - Additional parameters to include in the request
  ///
  /// Returns a map of ActionConfig to HttpRequestParams
  static Map<ActionConfig, HttpRequestParams> buildActions({
    required Field field,
    ActionEvent event = ActionEvent.onApply,
    dynamic value,
    Map<String, dynamic>? additionalParams,
  }) {
    // Get actions for the specified event
    final fieldActions =
        field.actions?.where((action) => action.event == event) ?? [];

    if (fieldActions.isEmpty) {
      return {};
    }

    // Create a map of actions and their parameters
    return Map.fromEntries(
      fieldActions.map((action) =>
          MapEntry(action, _prepareRequestParams(action, field, value))),
    );
  }

  /// Prepares request parameters for an action.
  static HttpRequestParams _prepareRequestParams(
      ActionConfig action, Field field, dynamic value) {
    return field.maybeMap(
      signature: (signature) => _handleSignatureUploadParam(action, value),
      // Handle special case for file upload with signature
      file: (file) => _handleFileUploadParam(field.id, action, value),
      // Handle file upload
      orElse: () =>
          _applyBaseParams(action), // Default handling for other field types
    );
  }

  /// Handles signature upload as a special case of file upload.
  static HttpRequestParams _handleSignatureUploadParam(
    ActionConfig action,
    dynamic value,
  ) {
    if (value != null && value is Uint8List) {
      final file = MultipartFile.fromBytes(value, filename: 'signature.png');

      return HttpRequestParams.multipart(
        files: [file],
      );
    }

    return _applyBaseParams(action);
  }

  /// Handles file upload.
  static HttpRequestParams _handleFileUploadParam(
    String? fieldId,
    ActionConfig action,
    dynamic value,
  ) {
    if (value == null) {
      return _applyBaseParams(action);
    }
    // If value is a file
    if (value is Uint8List || value is XFile) {
      // Create a multipart request
      return HttpRequestParams.multipart(
        files: [_createMultipartFile(fieldId, value)],
      );
    } else if (value is FilePickerResult) {
      // Create a multipart request
      return HttpRequestParams.multipart(
        files: value.xFiles
            .map((file) => _createMultipartFile(fieldId, file))
            .toList(),
      );
    }

    return _applyBaseParams(action);
  }

  /// Creates a MultipartFile from various file types.
  static MultipartFile _createMultipartFile(String? fieldId, dynamic file) {
    if (file is XFile) {
      return MultipartFile.fromFileSync(
        file.path,
        filename: file.path.split('/').last,
      );
    } else if (file is Uint8List) {
      return MultipartFile.fromBytes(
        file,
        filename: fieldId,
      );
    }
    throw ArgumentError('Unsupported file type: ${file.runtimeType}');
  }

  /// Applies base parameters to the request.
  static HttpRequestParams _applyBaseParams(
    ActionConfig action,
  ) {
    // Check if the action has a custom request params configuration
    return HttpRequestParams.json();
  }
}
