import 'package:flutter/material.dart';

import '../../../authentication.dart';

extension local on BuildContext {
  AuthenticationLocalizations get authLocal =>
      AuthenticationLocalizations.of(this);
}
