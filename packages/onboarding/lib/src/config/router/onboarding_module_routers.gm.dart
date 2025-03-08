// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:common_dependencies/common_dependencies.dart' as _i8;
import 'package:kib_design_system/kib_design_system.dart' as _i6;
import 'package:onboarding/src/features/data/models/section.dart' as _i7;
import 'package:onboarding/src/features/presentation/onboarding_steps/screen/onboarding_steps_screen.dart'
    as _i2;
import 'package:onboarding/src/features/presentation/onboarding_steps/screen/onboarding_unauth_steps_screen.dart'
    as _i3;
import 'package:onboarding/src/features/presentation/sections/screens/ki_section.dart'
    as _i1;
import 'package:onboarding/src/features/presentation/sections/screens/section_wrapper_screen.dart'
    as _i4;

abstract class $OnboardingModuleRoutes extends _i5.AutoRouterModule {
  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    KiSectionRoute.name: (routeData) {
      final args = routeData.argsAs<KiSectionRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.KiSectionScreen(
          key: args.key,
          section: args.section,
          previousRoute: args.previousRoute,
          nextRoute: args.nextRoute,
          stepTitle: args.stepTitle,
          stepRank: args.stepRank,
        ),
      );
    },
    OnboardingStepsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingStepsScreen(),
      );
    },
    OnboardingUnAuthStepsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnboardingUnAuthStepsScreen(),
      );
    },
    SectionWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<SectionWrapperRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SectionWrapperScreen(
          key: args.key,
          stepId: args.stepId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.KiSectionScreen]
class KiSectionRoute extends _i5.PageRouteInfo<KiSectionRouteArgs> {
  KiSectionRoute({
    _i6.Key? key,
    required _i7.Section section,
    _i8.PageRouteInfo<dynamic>? previousRoute,
    _i8.PageRouteInfo<dynamic>? nextRoute,
    String? stepTitle,
    String? stepRank,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          KiSectionRoute.name,
          args: KiSectionRouteArgs(
            key: key,
            section: section,
            previousRoute: previousRoute,
            nextRoute: nextRoute,
            stepTitle: stepTitle,
            stepRank: stepRank,
          ),
          initialChildren: children,
        );

  static const String name = 'KiSectionRoute';

  static const _i5.PageInfo<KiSectionRouteArgs> page =
      _i5.PageInfo<KiSectionRouteArgs>(name);
}

class KiSectionRouteArgs {
  const KiSectionRouteArgs({
    this.key,
    required this.section,
    this.previousRoute,
    this.nextRoute,
    this.stepTitle,
    this.stepRank,
  });

  final _i6.Key? key;

  final _i7.Section section;

  final _i8.PageRouteInfo<dynamic>? previousRoute;

  final _i8.PageRouteInfo<dynamic>? nextRoute;

  final String? stepTitle;

  final String? stepRank;

  @override
  String toString() {
    return 'KiSectionRouteArgs{key: $key, section: $section, previousRoute: $previousRoute, nextRoute: $nextRoute, stepTitle: $stepTitle, stepRank: $stepRank}';
  }
}

/// generated route for
/// [_i2.OnboardingStepsScreen]
class OnboardingStepsRoute extends _i5.PageRouteInfo<void> {
  const OnboardingStepsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OnboardingStepsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingStepsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnboardingUnAuthStepsScreen]
class OnboardingUnAuthStepsRoute extends _i5.PageRouteInfo<void> {
  const OnboardingUnAuthStepsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OnboardingUnAuthStepsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingUnAuthStepsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SectionWrapperScreen]
class SectionWrapperRoute extends _i5.PageRouteInfo<SectionWrapperRouteArgs> {
  SectionWrapperRoute({
    _i6.Key? key,
    required String stepId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SectionWrapperRoute.name,
          args: SectionWrapperRouteArgs(
            key: key,
            stepId: stepId,
          ),
          initialChildren: children,
        );

  static const String name = 'SectionWrapperRoute';

  static const _i5.PageInfo<SectionWrapperRouteArgs> page =
      _i5.PageInfo<SectionWrapperRouteArgs>(name);
}

class SectionWrapperRouteArgs {
  const SectionWrapperRouteArgs({
    this.key,
    required this.stepId,
  });

  final _i6.Key? key;

  final String stepId;

  @override
  String toString() {
    return 'SectionWrapperRouteArgs{key: $key, stepId: $stepId}';
  }
}
