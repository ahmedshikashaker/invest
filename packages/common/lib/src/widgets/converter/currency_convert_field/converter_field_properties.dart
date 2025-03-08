import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KIConverterFieldProperties
    extends ThemeExtension<KIConverterFieldProperties>
    with DiagnosticableTreeMixin {
  /// The padding around field in the Converter card.
  final AppEdgeInsets fieldPadding;

  /// The from style of the Converter card.
  final AppTextStyle amountStyle;

  /// The to Currency style of the Converter card.
  final AppTextStyle currencyStyle;

  KIConverterFieldProperties(
      {required this.fieldPadding,
      required this.amountStyle,
      required this.currencyStyle});

  @override
  KIConverterFieldProperties copyWith({
    AppEdgeInsets? fieldPadding,
    AppTextStyle? amountStyle,
    AppTextStyle? currencyStyle,
  }) {
    return KIConverterFieldProperties(
      fieldPadding: fieldPadding ?? this.fieldPadding,
      amountStyle: amountStyle ?? this.amountStyle,
      currencyStyle: currencyStyle ?? this.currencyStyle,
    );
  }

  @override
  KIConverterFieldProperties lerp(
      ThemeExtension<KIConverterFieldProperties>? other, double t) {
    if (other is! KIConverterFieldProperties) return this;

    return KIConverterFieldProperties(
      fieldPadding: fieldPadding,
      amountStyle: amountStyle,
      currencyStyle: currencyStyle,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIConverterProperties"))
      ..add(DiagnosticsProperty<AppEdgeInsets>("fieldPadding", fieldPadding))
      ..add(DiagnosticsProperty<AppTextStyle>("amountStyle", amountStyle))
      ..add(DiagnosticsProperty<AppTextStyle>("currencyStyle", currencyStyle));
  }
}
