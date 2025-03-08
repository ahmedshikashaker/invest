import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';

class FundsListEmptyWidget extends StatelessWidget {
  const FundsListEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmptyTransactionsWidget(
          icon: Assets.icons.graph,
          title: context.fundsLocal.fundsUnavailableEmptyStateTitle,
          size: AppEmptyWidgetSize.small,
          description: context.fundsLocal.fundsUnavailableEmptyStateDesc,
        ),
      ],
    );
  }
}
