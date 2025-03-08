import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KITransactionColors extends ThemeExtension<KITransactionColors>
    with DiagnosticableTreeMixin {
  /// The BackgroundColor of the Transaction status card.
  final Color backgroundColor;

  const KITransactionColors({
    required this.backgroundColor,
  });

  @override
  KITransactionColors copyWith({
    Color? backgroundColor,
  }) {
    return KITransactionColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  KITransactionColors lerp(
      ThemeExtension<KITransactionColors>? other, double t) {
    if (other is! KITransactionColors) return this;

    return KITransactionColors(
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KITransactionColors"))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
