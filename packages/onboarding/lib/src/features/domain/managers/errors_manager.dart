import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ErrorsManager {
  final ValueNotifier<Map<String, String>> _errorsNotifier =
  ValueNotifier<Map<String, String>>({});

  ValueNotifier<Map<String, String>> get errorsNotifier => _errorsNotifier;

  Map<String, String> get currentErrors => _errorsNotifier.value;

  void setErrors(Map<String, String> errors) {
    _errorsNotifier.value = Map.from(errors);
  }

  void setError(String fieldId, String error) {
    _errorsNotifier.value = Map.from(_errorsNotifier.value)..[fieldId] = error;
  }

  void clearError(String fieldId) {
    _errorsNotifier.value = Map.from(_errorsNotifier.value)..remove(fieldId);
  }

  void setSectionErrors(String sectionId, Map<String, String> errors) {
    _errorsNotifier.value = {..._errorsNotifier.value, ...errors};
  }

  void clearAll() {
    _errorsNotifier.value = {};
  }

  void dispose() {
    _errorsNotifier.dispose();
  }
}
