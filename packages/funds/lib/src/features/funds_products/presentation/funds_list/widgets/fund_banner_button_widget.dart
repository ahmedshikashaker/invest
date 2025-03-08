import 'package:funds/src/features/funds_products/presentation/funds_list/cubit/funds_list_cubit.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:authentication/authentication.dart';

class FundBannerButtonWidget extends StatelessWidget {
  const FundBannerButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundsListCubit>();
    return AppPadding(
      padding: AppEdgeInsets.symmetric(vertical: AppGapSize.m),
      child: AppButton.primary(
        backgroundColor: context.tokens.colors.actionableSecondary,
        title: context.fundsLocal.registerNowTitle,
        onTap: () {
          context.router.push(RegistrationRoute());
        },
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}
