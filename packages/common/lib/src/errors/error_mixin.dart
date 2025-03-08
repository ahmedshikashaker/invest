import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/common.dart';
import 'package:invest_common/src/errors/error_messages.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/components/error_widgets/error_widgets.dart';
import 'package:kib_design_system/kib_design_system.dart';

mixin ErrorStateMixin<Page extends StatefulWidget> on State<Page> {
  void handleErrors(AppExceptions exception, {Function()? action}) {
    if (exception is NetworkException) {
      exception.maybeWhen(noInternetConnection: () {
        showErrorDialog(
            builder: (context) => loadingError(
                  onTryAgain: () {
                    if (action != null) action();
                    context.maybePop();
                  },
                  content: ErrorMessages.getErrorMessage(exception, context),
                ));
      }, businessError: (String? error, String? code) {
        showErrorDialog(
            builder: (context) => loadingError(
                  onTryAgain: () {
                    if (action != null) action();
                    context.maybePop();
                  },
                  content: ErrorMessages.getErrorMessage(exception, context),
                ));
      }, orElse: () {
        showErrorDialog(
            builder: (context) => loadingError(
                  onTryAgain: () {
                    if (action != null) action();
                    context.maybePop();
                  },
                  content: ErrorMessages.getErrorMessage(exception, context),
                ));
      });
    } else {
      showErrorDialog(
          builder: (context) => loadingError(
                onTryAgain: () {
                  if (action != null) action();
                  context.maybePop();
                },
                content: ErrorMessages.getErrorMessage(exception, context),
              ));
    }
  }

  void showErrorDialog({required ChildBuilder builder}) {
    if (kIsWeb) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => dialogWrapper(builder));
    } else {
      showAppModalBottomSheet(context,
          headerBackgroundColor: Colors.transparent,
          padding: const AppEdgeInsets.only(
              top: AppGapSize.m,
              right: AppGapSize.m,
              left: AppGapSize.m,
              bottom: AppGapSize.xl),
          body: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  98,
              child: Builder(builder: (context) {
                return builder(context);
              })));
    }
  }

  Widget loadingError(
          {String? title,
          String? content,
          String? buttonText,
          required void Function() onTryAgain}) =>
      AppErrorWidget.loadingFailed(
        title: title ?? CommonLocalizations.of(context).generalErrorTitle,
        content: content ?? CommonLocalizations.of(context).generalErrorContent,
        buttonText: buttonText ??
            CommonLocalizations.of(context).generalErrorButtonTryAgain,
        onTryAgain: onTryAgain,
        padding: const AppEdgeInsets.only(bottom: AppGapSize.xl),
      );

  dialogWrapper(ChildBuilder builder) {
    return Builder(builder: (context) {
      var screenSize = MediaQuery.of(context).size;
      double width = screenSize.width < 600 ? screenSize.width * .9 : 600;
      return AppPopUpBody(
        width: width,
        padding: const AppEdgeInsets.m(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: InkWell(
                onTap: () {
                  context.maybePop();
                },
                child: AppContainer(
                  margin: const AppEdgeInsets.symmetric(
                    horizontal: AppGapSize.m,
                  ),
                  child: AppIcon(
                    icon: Assets.icons.close,
                    color: AppTheme.of(context).colors.hint,
                  ),
                ),
              ),
            ),
            const AppGap.m(),
            SizedBox(height: 384, child: builder(context)),
          ],
        ),
      );
    });
  }
}

typedef ChildBuilder = Widget Function(BuildContext context);
