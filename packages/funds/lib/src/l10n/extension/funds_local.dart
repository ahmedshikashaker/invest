import 'package:flutter/material.dart';
import 'package:funds/src/l10n/gen/funds_localizations.dart';


extension local on BuildContext {
  FundsLocalizations get fundsLocal =>
      FundsLocalizations.of(this);
}