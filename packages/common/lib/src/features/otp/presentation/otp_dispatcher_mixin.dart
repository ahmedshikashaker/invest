import 'dart:async';

import 'package:invest_common/src/features/features.dart';
import 'package:invest_common/src/features/otp/data/models/otp_request_model.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

/// A mixin which enables Dispatching otp
/// for [Bloc] and [Cubit] classes.
///
/// The mixin required some prior preparation.
/// * [loadingOtpEmitter] a loading state depend on host bloc ,cubit
/// * [otpSentEmitter] a success state depend on host bloc ,cubit
/// * [otpErrorEmitter] an error state depend on host bloc ,cubit
/// * [sendOtp]
///
///
/// ```dart
/// class ExampleCubit extends Cubit<ExampleState> with DigitalOTPDispatcherMixin<ExampleState> {
///  ...
/// }
/// ```
///
mixin DigitalOTPDispatcherMixin<State> on BlocBase<State> {
  final RequestOTPUseCase _sendOtpUseCase = getIt<RequestOTPUseCase>();

  OTPRequestModel get _otpRequest => OTPRequestModel(scope: scope.name);

  /// [scope] otp scope
  Enum get scope;

  State get loadingOtpEmitter;

  State otpSentEmitter({required bool isResend, required String receiver});

  State otpErrorEmitter(AppExceptions error);

  Future<Either<AppExceptions, dynamic>> sendOtp({
    bool isResend = false,
  }) async {
    emit(loadingOtpEmitter);
    final result = await _sendOtpUseCase(_otpRequest);
    result.fold(
      (error) => emit(otpErrorEmitter(error)),
      (response) => emit(
        otpSentEmitter(
          isResend: isResend,
          receiver: response?.mobileNumber ?? "*******",
        ),
      ),
    );
    return right(result);
  }
}
