import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

class PasswordRoleWidget extends StatelessWidget {
  const PasswordRoleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ResetPasswordCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppGapSize.xs.getSpacing(context.tokens),
      children: [
        AppText.smallMedium(
          context.authLocal.passwordMustAtLeastBe,
          color: AppColorsData.white,
        ),
        buildRoleRow(context.authLocal.passwordLength, cubit.isValidLength),
        buildRoleRow(
          context.authLocal.validPassword,
          cubit.isValidPassword,
        ),
        buildRoleRow(
          context.authLocal.passwordMatching,
          cubit.isPasswordMatching,
        ),
      ],
    );
  }

  MenuItemWidget buildRoleRow(String title, bool checked) {
    return MenuItemWidget(
      padding: AppEdgeInsets.none(),
      leadingWidget: AppPadding(
        padding: AppEdgeInsets.only(right: AppGapSize.xs),
        child: AppIcon(
          icon: checked
              ? Assets.icons.checkCircleFilled
              : Assets.icons.checkboxCircle,
          color: AppColorsData.white,
        ),
      ),
      title: title,
      titleMaxLines: 2,
      titleTextStyle: AppTextStyle(
        level: AppTextLevel.smallRegular,
        color: AppColorsData.white,
      ),
    );
  }
}
