import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:authentication/src/features/paci_auth/presentation/widgets/review_details_widget.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/onboarding.dart';


@RoutePage()
class PaciAuthSuccessScreen extends StatelessWidget {
  final PaciInfoModel? paciInfoModel;

  const PaciAuthSuccessScreen({super.key, this.paciInfoModel});

  @override
  Widget build(BuildContext context) {
    return KISuccessfulScreen(
      title: context.authLocal.paciAuthSuccessTitle,
      description:
      context.authLocal.paciAuthSuccessDesc,
      child: KIReviewDetailsWidget(paciInfoModel: paciInfoModel),
      button: AppButton.contrast(
        title: context.authLocal.continueTitle,
        onTap: () => context.router.replaceAll([OnboardingStepsRoute()]),
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}




