import 'package:onboarding/src/features/data/models/step.dart';
import 'package:onboarding/src/features/domain/managers/answers_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:onboarding/src/features/presentation/navigation/step_navigation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../../data/models/get_step_details_request.dart';
import '../../domain/usecase/get_step_details_usecase.dart';

part 'step_state.dart';

part 'step_cubit.freezed.dart';

@Injectable()
class StepCubit extends Cubit<StepState> {
  final AnswersManager _answersManager;
  final NavigationDoublyLinkedListBuilder navigationDoublyLinkedListBuilder;
  final CacheManager cacheManager;
  Step? _step;
  final GetStepDetailsUsecase _getStepDetailsUsecase;
  final String onBoardingFlowId;

  StepCubit(
    this._answersManager,
    this.navigationDoublyLinkedListBuilder,
    this.cacheManager,
    this._getStepDetailsUsecase,
    @Named("ONBOARDING_FLOW_ID") this.onBoardingFlowId,
  ) : super(StepState.initial());

  Future<void> loadStep(String stepId) async {
    emit(const StepState.loading());
    emit((await _getStepDetailsUsecase
            .getStepDetails(GetStepDetailsRequest(stepId, onBoardingFlowId)))
        .fold((error) {
      if (error is NetworkException) {
        return error.maybeMap(
          orElse: () => StepState.error(error, loadStep),
          businessError: (error) => StepState.businessError(error),
        );
      }
      return StepState.error(error, loadStep);
    }, (responseData) {
      _step = responseData;
      _answersManager.initAnswers(_step?.sections ?? []);
      emit(StepState.loaded(navigationTree: _buildNavigation()));
      return StepState.success((responseData));
    }));
  }

  PageRouteInfo? _buildNavigation() {
    if (_step == null) {
      return null;
    }
    return navigationDoublyLinkedListBuilder.buildNavigation(_step!);
  }

  void downloadIcons(List<String> iconsUrls) {
    //to download files
    iconsUrls.forEach((url) => cacheManager.downloadFile("onboarding/icons/${url}"));
  }

  @override
  Future<void> close() {
    _answersManager.clearAnswers();
    return super.close();
  }
}
