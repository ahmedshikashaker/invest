//@GeneratedMicroModule;AuthenticationPackageModule;package:authentication/src/config/di/injection_module.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:authentication/authentication.dart' as _i6;
import 'package:authentication/src/features/forget_password/data/remote/services/forget_password_service.dart'
    as _i950;
import 'package:authentication/src/features/forget_password/data/remote/sources/forget_password_remote_data_source.dart'
    as _i403;
import 'package:authentication/src/features/forget_password/data/remote/sources/forget_password_remote_data_source_impl.dart'
    as _i36;
import 'package:authentication/src/features/forget_password/data/repository/forget_password_repository.dart'
    as _i530;
import 'package:authentication/src/features/forget_password/data/repository/forget_password_repository_impl.dart'
    as _i507;
import 'package:authentication/src/features/forget_password/domain/forget_password_init_usecase.dart'
    as _i62;
import 'package:authentication/src/features/forget_password/domain/forget_password_reset_usecase.dart'
    as _i198;
import 'package:authentication/src/features/forget_password/domain/forget_password_verify_usecase.dart'
    as _i748;
import 'package:authentication/src/features/forget_password/screen/forget_password/cubit/forget_password_cubit.dart'
    as _i454;
import 'package:authentication/src/features/forget_password/screen/reset_password/cubit/reset_password_cubit.dart'
    as _i156;
import 'package:authentication/src/features/forget_password/screen/verify_otp/cubit/verify_forget_password_cubit.dart'
    as _i272;
import 'package:authentication/src/features/landing_page/cubit/landing_page_cubit.dart'
    as _i986;
import 'package:authentication/src/features/login/cubit/login_cubit.dart'
    as _i1066;
import 'package:authentication/src/features/login/data/remote/services/login_service.dart'
    as _i99;
import 'package:authentication/src/features/login/data/remote/sources/login_remote_data_source.dart'
    as _i668;
import 'package:authentication/src/features/login/data/remote/sources/login_remote_data_source_impl.dart'
    as _i906;
import 'package:authentication/src/features/login/data/repository/login_repository.dart'
    as _i853;
import 'package:authentication/src/features/login/data/repository/login_repository_impl.dart'
    as _i944;
import 'package:authentication/src/features/login/domain/login_usecase.dart'
    as _i176;
import 'package:authentication/src/features/on_boarding/cubit/on_boarding_cubit.dart'
    as _i984;
import 'package:authentication/src/features/paci_auth/data/remote/services/paci_auth_service.dart'
    as _i228;
import 'package:authentication/src/features/paci_auth/data/remote/source/paci_auth_remote_data_source.dart'
    as _i978;
import 'package:authentication/src/features/paci_auth/data/remote/source/paci_auth_remote_data_source_impl.dart'
    as _i879;
import 'package:authentication/src/features/paci_auth/data/repository/paci_auth_repository.dart'
    as _i96;
import 'package:authentication/src/features/paci_auth/data/repository/paci_auth_repository_impl.dart'
    as _i844;
import 'package:authentication/src/features/paci_auth/domain/get_paci_info_usecase.dart'
    as _i709;
import 'package:authentication/src/features/paci_auth/domain/init_paci_usecase.dart'
    as _i402;
import 'package:authentication/src/features/paci_auth/presentation/cubit/paci_auth_cubit.dart'
    as _i65;
import 'package:authentication/src/features/registration/data/remote/services/registration_service.dart'
    as _i220;
import 'package:authentication/src/features/registration/data/remote/sources/registration_remote_data_source.dart'
    as _i464;
import 'package:authentication/src/features/registration/data/remote/sources/registration_remote_data_source_impl.dart'
    as _i852;
import 'package:authentication/src/features/registration/data/repository/registration_repository.dart'
    as _i834;
import 'package:authentication/src/features/registration/data/repository/registration_repository_impl.dart'
    as _i186;
import 'package:authentication/src/features/registration/domain/register_user_usecase.dart'
    as _i610;
import 'package:authentication/src/features/registration/domain/request_verify_email_usecase.dart'
    as _i863;
import 'package:authentication/src/features/registration/domain/request_verify_mobile_number_usecase.dart'
    as _i691;
import 'package:authentication/src/features/registration/domain/verify_email_usecase.dart'
    as _i991;
import 'package:authentication/src/features/registration/domain/verify_mobile_usecase.dart'
    as _i722;
import 'package:authentication/src/features/registration/presentation/email_otp/cubit/email_otp_cubit.dart'
    as _i1010;
import 'package:authentication/src/features/registration/presentation/mobile_otp/cubit/mobile_otp_cubit.dart'
    as _i1011;
import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_cubit.dart'
    as _i214;
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart'
    as _i80;
import 'package:authentication/src/features/splash/cubit/splash_cubit.dart'
    as _i703;
import 'package:common_dependencies/common_dependencies.dart' as _i690;
import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;

class AuthenticationPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i703.SplashCubit>(() => _i703.SplashCubit());
    gh.factory<_i986.LandingPageCubit>(() => _i986.LandingPageCubit());
    gh.factory<_i984.OnBoardingCubit>(() => _i984.OnBoardingCubit());
    gh.factory<_i220.RegistrationService>(
        () => _i220.RegistrationService(gh<_i690.Dio>()));
    gh.factory<_i950.ForgetPasswordService>(
        () => _i950.ForgetPasswordService(gh<_i690.Dio>()));
    gh.factory<_i228.PaciAuthService>(
        () => _i228.PaciAuthService(gh<_i361.Dio>()));
    gh.factory<_i99.LoginService>(() => _i99.LoginService(gh<_i690.Dio>()));
    gh.factory<_i668.LoginRemoteDataSource>(
        () => _i906.LoginRemoteDataSourceImpl(gh<_i99.LoginService>()));
    gh.factory<_i978.PaciAuthRemoteDataSource>(
        () => _i879.PaciAuthRemoteDataSourceImpl(gh<_i228.PaciAuthService>()));
    gh.factory<_i96.PaciAuthRepository>(() =>
        _i844.PaciAuthRepositoryImpl(gh<_i978.PaciAuthRemoteDataSource>()));
    gh.factory<_i402.InitPaciUseCase>(
        () => _i402.InitPaciUseCase(gh<_i96.PaciAuthRepository>()));
    gh.factory<_i853.LoginRepository>(
        () => _i944.LoginRepositoryImpl(gh<_i668.LoginRemoteDataSource>()));
    gh.factory<_i403.ForgetPasswordRemoteDataSource>(() =>
        _i36.ForgetPasswordRemoteDataSourceImpl(
            gh<_i950.ForgetPasswordService>()));
    gh.factory<_i464.RegistrationRemoteDataSource>(() =>
        _i852.RegistrationRemoteDataSourceImpl(
            gh<_i220.RegistrationService>()));
    gh.factory<_i834.RegistrationRepository>(() =>
        _i186.RegistrationRepositoryImpl(
            gh<_i464.RegistrationRemoteDataSource>()));
    gh.factory<_i530.ForgetPasswordRepository>(() =>
        _i507.ForgetPasswordRepositoryImpl(
            gh<_i403.ForgetPasswordRemoteDataSource>()));
    gh.factory<_i62.ForgetPasswordInitUsecase>(() =>
        _i62.ForgetPasswordInitUsecase(gh<_i530.ForgetPasswordRepository>()));
    gh.factory<_i748.ForgetPasswordVerifyUsecase>(() =>
        _i748.ForgetPasswordVerifyUsecase(
            gh<_i530.ForgetPasswordRepository>()));
    gh.factory<_i198.ForgetPasswordResetUsecase>(() =>
        _i198.ForgetPasswordResetUsecase(gh<_i530.ForgetPasswordRepository>()));
    gh.factory<_i709.GetPaciInfoUseCase>(
        () => _i709.GetPaciInfoUseCase(gh<_i96.PaciAuthRepository>()));
    gh.factory<_i176.LoginUsecase>(
        () => _i176.LoginUsecase(gh<_i853.LoginRepository>()));
    gh.factory<_i722.VerifyMobileUsecase>(
        () => _i722.VerifyMobileUsecase(gh<_i834.RegistrationRepository>()));
    gh.factory<_i863.RequestVerifyEmailUsecase>(() =>
        _i863.RequestVerifyEmailUsecase(gh<_i834.RegistrationRepository>()));
    gh.factory<_i610.RegisterUserUsecase>(
        () => _i610.RegisterUserUsecase(gh<_i834.RegistrationRepository>()));
    gh.factory<_i691.RequestVerifyMobileNumberUsecase>(() =>
        _i691.RequestVerifyMobileNumberUsecase(
            gh<_i834.RegistrationRepository>()));
    gh.factory<_i991.VerifyEmailUsecase>(
        () => _i991.VerifyEmailUsecase(gh<_i834.RegistrationRepository>()));
    gh.factory<_i1066.LoginCubit>(
        () => _i1066.LoginCubit(gh<_i176.LoginUsecase>()));
    gh.factory<_i1011.MobileOtpCubit>(() => _i1011.MobileOtpCubit(
          gh<_i722.VerifyMobileUsecase>(),
          gh<_i691.RequestVerifyMobileNumberUsecase>(),
        ));
    gh.factory<_i65.PaciAuthCubit>(() => _i65.PaciAuthCubit(
          gh<_i402.InitPaciUseCase>(),
          gh<_i709.GetPaciInfoUseCase>(),
        ));
    gh.factory<_i156.ResetPasswordCubit>(
        () => _i156.ResetPasswordCubit(gh<_i198.ForgetPasswordResetUsecase>()));
    gh.factory<_i80.RegistrationCubit>(
        () => _i80.RegistrationCubit(gh<_i863.RequestVerifyEmailUsecase>()));
    gh.factory<_i272.VerifyForgetPasswordCubit>(
        () => _i272.VerifyForgetPasswordCubit(
              gh<_i748.ForgetPasswordVerifyUsecase>(),
              gh<_i6.ForgetPasswordInitUsecase>(),
            ));
    gh.factory<_i454.ForgetPasswordCubit>(
        () => _i454.ForgetPasswordCubit(gh<_i6.ForgetPasswordInitUsecase>()));
    gh.factory<_i1010.EmailOtpCubit>(() => _i1010.EmailOtpCubit(
          gh<_i991.VerifyEmailUsecase>(),
          gh<_i863.RequestVerifyEmailUsecase>(),
        ));
    gh.factory<_i214.PersonalDetailsRegisterCubit>(
        () => _i214.PersonalDetailsRegisterCubit(
              gh<_i691.RequestVerifyMobileNumberUsecase>(),
              gh<_i610.RegisterUserUsecase>(),
            ));
  }
}
