import 'package:common_dependencies/common_dependencies.dart';

extension KIBInvestStringDirectionalityExtension on String {
  String get ltr => Bidi.enforceLtrInText(this);

  String get rtl => Bidi.enforceRtlInText(this);

  String get adaptiveDirection => Bidi.hasAnyRtl(this)
      ? Bidi.enforceRtlInText(this)
      : Bidi.enforceLtrInText(this);
}
