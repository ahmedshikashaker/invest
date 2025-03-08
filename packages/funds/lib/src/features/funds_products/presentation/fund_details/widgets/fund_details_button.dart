import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:authentication/authentication.dart';


class FundDetailsButton extends StatelessWidget {
  const FundDetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: AppPadding(
        padding: AppEdgeInsets.m(),
        child: AppButton(
          title: context.fundsLocal.registerNowTitle,
          onTap: () {
            context.router.push(RegistrationRoute());
          },
          mainAxisSize: MainAxisSize.max,
        ),
      ),
    );
  }
}