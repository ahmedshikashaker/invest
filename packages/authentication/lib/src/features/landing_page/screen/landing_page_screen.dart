import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import '../cubit/landing_page_cubit.dart';
import '../cubit/landing_page_state.dart';
import 'package:flutter/material.dart';
import 'package:funds/funds.dart';

@RoutePage()
class LandingPageScreen extends StatelessWidget {
  LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LandingPageCubit>(
      create: (context) => getIt<LandingPageCubit>(),
      child: BlocListener<LandingPageCubit, LandingPageState>(
        listener: (context, state) {
          context.read<LandingPageCubit>().login;
          state.mapOrNull();
        },
        child: AppScaffold(
          body: Builder(
            builder: (context) {
              context.read<LandingPageCubit>().login = false;
              return LandingPageBodyWidget();
            },
          ),
        ),
      ),
    );
  }
}

class LandingPageBodyWidget extends StatelessWidget {
  const LandingPageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          fit: BoxFit.cover,
          context.landingTheme.properties.imagePath,
          package: AuthModuleImages.brandingAssetPackage,
        ),
        SafeArea(
          child: FormLayout(
            padding: AppEdgeInsets.none(),
            widgets: [
              NavBarWidget(),
              AppContainer(
                alignment: Alignment.center,
                padding: AppEdgeInsets.symmetric(
                    horizontal: AppGapSize.xxl, vertical: AppGapSize.m),
                child: LogoImage(),
              )
            ],
            button: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.spacing.m,
                vertical:
                    MediaQuery.of(context).padding.bottom < context.spacing.m
                        ? context.spacing.m
                        : context.spacing.none,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton.secondary(
                    mainAxisSize: MainAxisSize.max,
                    title: context.authLocal.login,
                    padding: AppEdgeInsets.none(),
                    borderColor: AppColorsData.white,
                    titleColor: AppColorsData.white,
                    onTap: () {
                      context.router
                          .pushNamed(AuthenticationModuleRoutes.loginPath);
                    },
                  ),
                  const AppGap.xl(),
                  AppButton.contrast(
                    mainAxisSize: MainAxisSize.max,
                    padding: AppEdgeInsets.none(),
                    title: context.authLocal.exploreInvestmentOpportunities,
                    titleColor:
                        context.contrastButtonTheme.colors.textButtonColor,
                    onTap: () {
                      context.router.push(FundsListRoute());
                    },
                  ),
                  const AppGap.xl(),
                  AppText.smallMedium(
                    context.authLocal.neverUsedOnlineKIBInvestBefore,
                    color: AppColorsData.white.withOpacity(0.7),
                  ),
                  const AppGap.xxs(),
                  InkWell(
                    onTap: () {
                      context.pushRoute(RegistrationRoute());
                    },
                    child: AppText.bodyBold(
                      context.authLocal.registerNow,
                      color: AppColorsData.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
