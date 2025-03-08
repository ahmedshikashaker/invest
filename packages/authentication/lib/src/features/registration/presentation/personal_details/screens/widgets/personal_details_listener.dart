import 'package:authentication/src/config/router/authentication_module_routers.gm.dart';
import 'package:authentication/src/features/registration/presentation/mobile_otp/screens/mobile_otp_bottom_sheet.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_cubit.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_state.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

class PersonalDetailsListener extends StatefulWidget {
  const PersonalDetailsListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<PersonalDetailsListener> createState() =>
      _PersonalDetailsListenerState();
}

class _PersonalDetailsListenerState extends State<PersonalDetailsListener>
    with ErrorStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocListener<PersonalDetailsRegisterCubit,
        PersonalDetailsRegistrationState>(
      listener: (context, state) async {
        state.whenOrNull(
          error: (errors, callback) => handleErrors(
            errors,
            action: () => callback(),
          ),
          success: (actionToken) async {
            final cubit = context.read<PersonalDetailsRegisterCubit>();
            final mobileNumber = cubit.mobileNumber ?? '';

            final actionTokenAfterVerifyMobileNumber =
                await showMobileNumberOtpBottomSheet(
              context,
              mobileNumber,
              cubit.actionToken ?? "",
              actionToken,
            );

            if (actionTokenAfterVerifyMobileNumber != null) {
              cubit.actionToken = actionTokenAfterVerifyMobileNumber;
              cubit.registerUser();
            }
          },
          successfullyCreateUser: () {
            context.replaceRoute(RegistrationSuccessRoute());
          },
        );
      },
      child: widget.child,
    );
  }
}
