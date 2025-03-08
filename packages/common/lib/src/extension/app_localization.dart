import 'package:flutter/material.dart';

extension AppLocalization on BuildContext {
  Locale get language {
    return Localizations.localeOf(this);
  }
}
