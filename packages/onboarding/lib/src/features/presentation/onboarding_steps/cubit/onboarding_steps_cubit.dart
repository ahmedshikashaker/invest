import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../data/models/onboarding_steps_model.dart';
import '../domain/get_onboarding_steps_usecase.dart';
import 'onboarding_steps_state.dart';

@injectable
class OnboardingStepsCubit extends Cubit<OnboardingStepsState> {
  final GetOnboardingStepsUsecase _getOnboardingStepsUsecase;
  final CacheManager cacheManager;

  OnboardingStepsCubit(
    this._getOnboardingStepsUsecase,
    @Named("ONBOARDING_FLOW_ID") this.onBoardingFlowId,
    this.cacheManager,
  ) : super(const OnboardingStepsState.initial());

  bool _authorizeShare = false;

  bool authorizeShare() {
    if (getCurrentStepIndex() == (onboardingSteps?.steps?.length ?? 0) - 1) {
      return _authorizeShare;
    } else {
      return true;
    }
  }

  authShareDate(bool value) {
    _authorizeShare = value;
    emit(OnboardingStepsState.authShareDateState(value));
  }

  IndexedWidgetBuilder createConnectedStartConnectorBuilder({
    required Function(int index)? connectorBuilder,
  }) {
    return (context, index) {
      if (index == 0) {
        if (connectorBuilder != null) {
          return connectorBuilder.call(index);
        }
      }

      return connectorBuilder?.call(index);
    };
  }

  IndexedWidgetBuilder createConnectedEndConnectorBuilder({
    required Function(int index)? connectorBuilder,
    required int itemCount,
  }) {
    return (context, index) {
      if (index == itemCount - 1) {
        return connectorBuilder?.call(index + 1);
      }

      return connectorBuilder?.call(index + 1);
    };
  }

  StepSummaryModel? onboardingSteps;

  final String onBoardingFlowId;

  bool allPreviousCompleted(int index) => onboardingSteps!.steps!
      .sublist(0, index)
      .every((s) => (s.isCompleted == true));

  bool isCurrentStepPending(int index) {
    if (index == 0)
      return (onboardingSteps!.steps![index].isCompleted ==
          false); // First step check

    return allPreviousCompleted(index) &&
        (onboardingSteps!.steps![index].isCompleted == false);
  }

  int getCurrentStepIndex() {
    return onboardingSteps!.steps!.indexWhere((step) => !step.isCompleted!);
  }

  Future<void> getOnboardingSteps() async {
    emit(const OnboardingStepsState.loadingOnboardingSteps());
    emit(
        (await _getOnboardingStepsUsecase.call(onBoardingFlowId)).fold((error) {
      if (error is NetworkException) {
        return error.maybeMap(
          orElse: () => OnboardingStepsState.errorOnboardingSteps(
              error, getOnboardingSteps),
          businessError: (error) =>
              OnboardingStepsState.businessErrorOnboardingSteps(error),
        );
      }
      return OnboardingStepsState.errorOnboardingSteps(
          error, getOnboardingSteps);
    }, (onboardingSteps) {
      this.onboardingSteps = onboardingSteps;
      return const OnboardingStepsState.successfullyOnboardingSteps();
    }));
  }
}
