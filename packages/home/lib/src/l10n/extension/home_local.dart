import 'package:flutter/material.dart';
import 'package:home/src/l10n/gen/home_localizations.dart';

extension local on BuildContext {
  HomeLocalizations get homeLocal =>
      HomeLocalizations.of(this);
}
