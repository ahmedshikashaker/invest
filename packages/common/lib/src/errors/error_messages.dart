import 'package:flutter/material.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';

class ErrorMessages {
  static String getErrorMessage(AppExceptions exception, BuildContext context) {
    final localization = CommonLocalizations.of(context);

    var errorMessage = "";
    if (exception is NetworkException) {
      exception.maybeWhen(noInternetConnection: () {
        errorMessage = localization.generalErrorContent;
      }, businessError: (String? error, String? code) {
        errorMessage = error ?? localization.generalErrorContent;
      }, orElse: () {
        errorMessage = localization.generalErrorContent;
      });
      return errorMessage;
    } else {
      return exception.message ?? localization.generalErrorContent;
    }
  }
}

extension ParseErrors on Iterable<AppExceptions> {
  String message(BuildContext context) =>
      map((exception) => ErrorMessages.getErrorMessage(exception, context))
          .toSet()
          .join('\n');
}
