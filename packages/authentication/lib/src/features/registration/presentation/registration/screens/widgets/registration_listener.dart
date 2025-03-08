import 'package:authentication/src/config/router/authentication_module_routers.gm.dart';
import 'package:authentication/src/features/registration/presentation/email_otp/screens/email_otp_bottom_sheet.dart';
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart';
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_state.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

class RegistrationListener extends StatefulWidget {
  const RegistrationListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<RegistrationListener> createState() => _RegistrationListenerState();
}

class _RegistrationListenerState extends State<RegistrationListener>
    with ErrorStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationCubit, RegistrationState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (errors, callback) => handleErrors(
            errors,
            action: () => callback(),
          ),
          success: (actionToken) async {
            final cubit = context.read<RegistrationCubit>();
            final email = cubit.email ?? '';

            final actionTokenAfterVerifyEmail = await showEmailOtpBottomSheet(
              context,
              email,
              actionToken,
            );

            if (actionTokenAfterVerifyEmail != null) {

              context.replaceRoute(
                PersonalDetailsRegistrationRoute(
                  actionToken: actionTokenAfterVerifyEmail,
                  password: cubit.password!,
                ),
              );
            }
          },
        );
      },
      child: widget.child,
    );
  }
}
