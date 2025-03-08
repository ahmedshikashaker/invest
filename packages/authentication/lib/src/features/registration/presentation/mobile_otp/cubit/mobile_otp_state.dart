import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'mobile_otp_state.freezed.dart';

@freezed
abstract class MobileOtpState with _$MobileOtpState {
  const factory MobileOtpState.initial() = _Initial;
  const factory MobileOtpState.error(AppExceptions error, Function callback) =
      _Error;
  const factory MobileOtpState.success(String actionToken) = _Success;
}
