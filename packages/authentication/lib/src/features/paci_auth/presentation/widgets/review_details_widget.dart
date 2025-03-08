import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';


class KIReviewDetailsWidget extends StatelessWidget {
  const KIReviewDetailsWidget({
    super.key,
    required this.paciInfoModel,
  });

  final PaciInfoModel? paciInfoModel;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      margin: AppEdgeInsets.symmetric(
        vertical: AppGapSize.l,
      ),
      padding: AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: context.colors.kiWhite,
        borderRadius: context.radius.asBorderRadius().regular,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        children: [
          KIReviewDetailsItemWidget(
            title: context.authLocal.englishNameTitle,
            value: "${paciInfoModel?.nameEn?.capitalizeFirstOfEachWord}",
          ),
          KIReviewDetailsItemWidget(
            title: context.authLocal.arabicNameTitle,
            value: "${paciInfoModel?.nameAr}",
          ),
          KIReviewDetailsItemWidget(
            title: context.authLocal.civilIdTitle,
            value: "${paciInfoModel?.civilId}",
          ),
          KIReviewDetailsItemWidget(
            title: context.authLocal.civilIdExpiryDateTitle,
            value: "${paciInfoModel?.civilIdExpiryDate?.formatDate}",
          ),KIReviewDetailsItemWidget(
            title: context.authLocal.dateOfBirthTitle,
            value: "${paciInfoModel?.dateOfBirth?.formatDate}",
          ),
          KIReviewDetailsItemWidget(
            title: context.authLocal.nationalityTitle,
            value: "${paciInfoModel?.nationality?.capitalizeFirstOfEachWord}",
          ),
          KIReviewDetailsItemWidget(
            title: context.authLocal.genderTitle,
            value: "${paciInfoModel?.gender?.capitalize}",
          ),
          KIReviewDetailsItemWidget(
            title: context.authLocal.addressTitle,
            value: "${paciInfoModel?.address}",
            showDivider: false,
          ),
        ],
      ),
    );
  }
}