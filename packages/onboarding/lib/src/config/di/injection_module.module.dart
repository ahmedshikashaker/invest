//@GeneratedMicroModule;OnboardingPackageModule;package:onboarding/src/config/di/injection_module.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:common_dependencies/common_dependencies.dart' as _i690;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i447;
import 'package:injectable/injectable.dart' as _i526;
import 'package:onboarding/src/features/data/actions/factories/action_config_factory.dart'
    as _i262;
import 'package:onboarding/src/features/data/actions/factories/http_api_call_strategy_factory.dart'
    as _i204;
import 'package:onboarding/src/features/data/actions/handlers/action_handler.dart'
    as _i843;
import 'package:onboarding/src/features/data/actions/strategies/api/delete_json_strategy.dart'
    as _i1040;
import 'package:onboarding/src/features/data/actions/strategies/api/get_strategy.dart'
    as _i829;
import 'package:onboarding/src/features/data/actions/strategies/api/patch_json_strategy.dart'
    as _i595;
import 'package:onboarding/src/features/data/actions/strategies/api/post_form_data_strategy.dart'
    as _i560;
import 'package:onboarding/src/features/data/actions/strategies/api/post_json_strategy.dart'
    as _i179;
import 'package:onboarding/src/features/data/actions/strategies/api/post_multi_part_strategy.dart'
    as _i351;
import 'package:onboarding/src/features/data/actions/strategies/api/put_json_strategy.dart'
    as _i369;
import 'package:onboarding/src/features/data/remote/services/step_service.dart'
    as _i332;
import 'package:onboarding/src/features/data/remote/sources/step_remote_data_source.dart'
    as _i426;
import 'package:onboarding/src/features/data/remote/sources/step_remote_data_source_impl.dart'
    as _i604;
import 'package:onboarding/src/features/data/repository/step_repository.dart'
    as _i550;
import 'package:onboarding/src/features/data/repository/step_repository_impl.dart'
    as _i666;
import 'package:onboarding/src/features/domain/managers/answers_manager.dart'
    as _i58;
import 'package:onboarding/src/features/domain/managers/errors_manager.dart'
    as _i39;
import 'package:onboarding/src/features/domain/selectors/step_selectors.dart'
    as _i783;
import 'package:onboarding/src/features/domain/usecase/get_step_details_usecase.dart'
    as _i62;
import 'package:onboarding/src/features/domain/usecase/upload_file_usecase.dart'
    as _i427;
import 'package:onboarding/src/features/domain/validators/section_validator.dart'
    as _i258;
import 'package:onboarding/src/features/presentation/cubit/step_cubit.dart'
    as _i167;
import 'package:onboarding/src/features/presentation/navigation/step_navigation.dart'
    as _i25;
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_cubit.dart'
    as _i501;
import 'package:onboarding/src/features/presentation/onboarding_steps/data/remote/services/onboarding_steps_service.dart'
    as _i959;
import 'package:onboarding/src/features/presentation/onboarding_steps/data/remote/sources/onboarding_steps_remote_data_source.dart'
    as _i181;
import 'package:onboarding/src/features/presentation/onboarding_steps/data/remote/sources/onboarding_steps_remote_data_source_impl.dart'
    as _i1057;
import 'package:onboarding/src/features/presentation/onboarding_steps/data/repository/onboarding_steps_repository.dart'
    as _i712;
import 'package:onboarding/src/features/presentation/onboarding_steps/data/repository/onboarding_steps_repository_impl.dart'
    as _i189;
import 'package:onboarding/src/features/presentation/onboarding_steps/domain/get_onboarding_steps_usecase.dart'
    as _i937;
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart'
    as _i147;

class OnboardingPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i25.NavigationDoublyLinkedListBuilder>(
        () => _i25.NavigationDoublyLinkedListBuilder());
    gh.lazySingleton<_i58.AnswersManager>(() => _i58.AnswersManager());
    gh.lazySingleton<_i39.ErrorsManager>(() => _i39.ErrorsManager());
    gh.factory<_i1040.DeleteStrategy>(
        () => _i1040.DeleteStrategy(gh<_i690.Dio>()));
    gh.factory<_i369.PutJsonStrategy>(
        () => _i369.PutJsonStrategy(gh<_i690.Dio>()));
    gh.factory<_i560.PostFormDataStrategy>(
        () => _i560.PostFormDataStrategy(gh<_i690.Dio>()));
    gh.factory<_i829.GetStrategy>(() => _i829.GetStrategy(gh<_i690.Dio>()));
    gh.factory<_i351.PostMultipartStrategy>(
        () => _i351.PostMultipartStrategy(gh<_i690.Dio>()));
    gh.factory<_i179.PostJsonStrategy>(
        () => _i179.PostJsonStrategy(gh<_i690.Dio>()));
    gh.factory<_i595.PatchJsonStrategy>(
        () => _i595.PatchJsonStrategy(gh<_i690.Dio>()));
    gh.factory<_i332.StepService>(() => _i332.StepService(gh<_i690.Dio>()));
    gh.factory<_i959.OnboardingStepsService>(
        () => _i959.OnboardingStepsService(gh<_i690.Dio>()));
    gh.factory<_i426.StepRemoteDataSource>(
        () => _i604.StepRemoteDataSourceImpl(gh<_i332.StepService>()));
    gh.factory<_i258.SectionValidator>(() => _i258.SectionValidator(
          gh<_i58.AnswersManager>(),
          gh<_i39.ErrorsManager>(),
        ));
    gh.factory<_i783.StepSelectors>(() => _i783.StepSelectors(
          gh<_i58.AnswersManager>(),
          gh<_i39.ErrorsManager>(),
        ));
    gh.factory<_i204.HttpApiCallStrategyFactory>(
        () => _i204.HttpApiCallStrategyFactory(
              gh<_i829.GetStrategy>(),
              gh<_i179.PostJsonStrategy>(),
              gh<_i560.PostFormDataStrategy>(),
              gh<_i351.PostMultipartStrategy>(),
              gh<_i369.PutJsonStrategy>(),
              gh<_i595.PatchJsonStrategy>(),
              gh<_i1040.DeleteStrategy>(),
            ));
    gh.factory<_i550.StepRepository>(
        () => _i666.StepRepositoryImpl(gh<_i426.StepRemoteDataSource>()));
    gh.factory<_i147.SectionCubit>(() => _i147.SectionCubit(
          gh<_i783.StepSelectors>(),
          gh<_i58.AnswersManager>(),
          gh<_i258.SectionValidator>(),
        ));
    gh.factory<_i62.GetStepDetailsUsecase>(
        () => _i62.GetStepDetailsUsecase(gh<_i550.StepRepository>()));
    gh.factory<_i427.UploadFileUsecase>(
        () => _i427.UploadFileUsecase(gh<_i550.StepRepository>()));
    gh.factory<_i262.ActionConfigFactory>(() =>
        _i262.ActionConfigFactory(gh<_i204.HttpApiCallStrategyFactory>()));
    gh.factory<_i181.OnboardingStepsRemoteDataSource>(() =>
        _i1057.OnboardingStepsRemoteDataSourceImpl(
            gh<_i959.OnboardingStepsService>()));
    gh.factory<_i843.ActionHandler>(() => _i843.ActionHandler(
          gh<_i262.ActionConfigFactory>(),
          gh<_i58.AnswersManager>(),
        ));
    gh.factory<_i712.OnboardingStepsRepository>(() =>
        _i189.AdvisoryRepositoryImpl(
            gh<_i181.OnboardingStepsRemoteDataSource>()));
    gh.factory<_i167.StepCubit>(() => _i167.StepCubit(
          gh<_i58.AnswersManager>(),
          gh<_i25.NavigationDoublyLinkedListBuilder>(),
          gh<_i447.CacheManager>(),
          gh<_i62.GetStepDetailsUsecase>(),
          gh<String>(instanceName: 'ONBOARDING_FLOW_ID'),
        ));
    gh.factory<_i937.GetOnboardingStepsUsecase>(() =>
        _i937.GetOnboardingStepsUsecase(gh<_i712.OnboardingStepsRepository>()));
    gh.factory<_i501.OnboardingStepsCubit>(() => _i501.OnboardingStepsCubit(
          gh<_i937.GetOnboardingStepsUsecase>(),
          gh<String>(instanceName: 'ONBOARDING_FLOW_ID'),
          gh<_i447.CacheManager>(),
        ));
  }
}
