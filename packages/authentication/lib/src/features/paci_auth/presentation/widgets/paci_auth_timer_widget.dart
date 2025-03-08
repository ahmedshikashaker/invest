import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/paci_auth/presentation/cubit/paci_auth_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:kib_design_system/widgets/progress_bar/circular_percentage_progress.dart';

class PaciAuthTimerWidget extends StatelessWidget {
  const PaciAuthTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PaciAuthCubit>();
    final remainingTime =
        cubit.getRemainingTime(); // Get remaining time dynamically
    double progressPercent =
        (1 - (remainingTime.inSeconds / 300)).clamp(0.0, 1.0);
    return Column(
      children: [
        AppText.smallMedium(
          context.authLocal.paciAuthExpiresInTitle,
          color: AppColorsData.shades.shade300,
        ),
        AppGap.s(),
        SizedBox(
          height: 55.rh,
          width: 55.rw,
          child: FittedBox(
            fit: BoxFit.fill,
            child: CircularPercentIndicator(
              percent: progressPercent,
              lineWidth: 3.5.rw,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: context.colors.disabled.withOpacity(0.6),
              progressColor: AppColorsData.white,
              center: AppContainer(
                margin: AppEdgeInsets.xxs(),
                child: AppText.captionBold(
                  "${remainingTime.inMinutes}:${(remainingTime.inSeconds % 60).toString().padLeft(2, '0')}",
                  fontSize: 12,
                  color: AppColorsData.shades.shade300,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
