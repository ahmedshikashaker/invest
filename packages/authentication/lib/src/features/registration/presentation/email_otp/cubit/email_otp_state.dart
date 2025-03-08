import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'email_otp_state.freezed.dart';

@freezed
abstract class EmailOtpState with _$EmailOtpState {
  const factory EmailOtpState.initial() = _Initial;
  const factory EmailOtpState.error(AppExceptions error, Function callback) =
      _Error;
  const factory EmailOtpState.success(String actionToken) = _Success;
}
