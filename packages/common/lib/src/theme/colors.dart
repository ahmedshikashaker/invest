import 'package:kib_design_system/kib_design_system.dart';

class KIAppColorsData extends AppColorsData {
  KIAppColorsData({
    required this.kiBackground,
    required this.kiWhite,
    required this.kiCardText,
    required this.kiLightBackground,
    required this.kiMain,
    required this.kiTextHeading,
    required this.kiTextBodyPrimary,
    required this.kiTextBodySecondary,
    required this.kiLightShape,
    required this.kiLightGreen,
    required this.kiLightBlueStroke,
    required this.kiTextSubTitle,
    required super.hint,
    required super.active,
    required super.textActive,
    required super.disabled,
    required super.accent,
    required super.warning,
    required super.critical,
    required super.success,
    required super.actionablePrimary,
    required super.actionableSecondary,
    required super.surface,
    required super.overlay,
    required super.background,
    required super.textHeading,
    required super.placeholder,
    required super.textDisabled,
    required super.textBodyPrimary,
    required super.textBodySecondary,
    required super.textReversed,
    required super.separator,
  });

  final Color kiBackground;
  final Color kiWhite;
  final Color kiCardText;
  final Color kiLightBackground;
  final Color kiMain;
  final Color kiTextHeading;
  final Color kiTextSubTitle;
  final Color kiTextBodyPrimary;
  final Color kiTextBodySecondary;
  final Color kiLightShape;
  final Color kiLightGreen;
  final Color kiLightBlueStroke;

  factory KIAppColorsData.light() {
    final azure = AppColorsData.azure;
    final amber = AppColorsData.amber;
    final sea = AppColorsData.sea;
    final crimson = AppColorsData.crimson;
    final shades = AppColorsData.shades;
    final white = AppColorsData.white;
    final seaDark = AppColorsData.seaDark;
    return KIAppColorsData(
      kiBackground: Color(0xFFE5F2FF),
      kiWhite: white,
      kiCardText: white,
      kiLightBackground: Color(0xFFF0F8FF),
      kiMain: azure,
      kiTextHeading: azure.shade800,
      kiTextBodyPrimary: Color(0xFF17293C),
      kiTextBodySecondary: shades.shade600,
      kiTextSubTitle: shades.shade400,
      kiLightShape: shades.shade100,
      kiLightGreen: seaDark.shade500,
      kiLightBlueStroke: azure.shade300,
      actionablePrimary: azure.shade500,
      actionableSecondary: azure.shade500,
      warning: amber.shade500,
      success: sea.shade700,
      critical: crimson.shade500,
      active: azure.shade500,
      textActive: azure.shade500,
      disabled: shades.shade200,
      accent: shades.shade200,
      hint: shades.shade400,
      surface: white,
      overlay: shades.shade900,
      background: Color(0xFFE5F2FF),
      textHeading: shades.shade900,
      textBodyPrimary: Color(0xFF17293C),
      textBodySecondary: shades.shade600,
      placeholder: shades.shade400,
      textDisabled: shades.shade500,
      textReversed: white,
      separator: azure.shade100,
    );
  }

  factory KIAppColorsData.dark() {
    final seaDark = AppColorsData.seaDark;
    final shades = AppColorsData.shades;
    final white = AppColorsData.white;
    final black = AppColorsData.black;

    return KIAppColorsData(
      kiBackground: Color(0xFF0B1C2D),
      kiWhite: Color(0xFF142A41),
      kiCardText: white,
      kiLightBackground: Color(0xFF0B1C2D),
      kiMain: Color(0xFF009FFD),
      kiTextHeading: white,
      kiTextBodyPrimary: Color(0xFFDFE1E4),
      kiTextBodySecondary: Color(0xFFE0E3E6),
      kiTextSubTitle: shades.shade300,
      kiLightShape: Color(0xFF0B1C2D),
      kiLightGreen: seaDark.shade500,
      kiLightBlueStroke: Color(0xFF39B8CF),
      actionablePrimary: const Color(0xff0080FF),
      actionableSecondary: const Color(0xff0080FF),
      warning: const Color(0xFFFFD266),
      success: const Color(0xFF6EF7E3),
      critical: const Color(0xFFFF3766),
      active: const Color(0xff0080FF),
      textActive: white,
      disabled: shades.shade700,
      accent: shades.shade800,
      hint: shades.shade400,
      surface: Color(0xFF142A41),
      overlay: black.withAlpha((.75 * 255).toInt()),
      background: Color(0xFF0B1C2D),
      textHeading: white,
      textBodyPrimary: white,
      textBodySecondary: shades.shade500,
      placeholder: shades.shade400,
      textDisabled: shades.shade600,
      textReversed: white,
      separator: shades.shade700,
    );
  }

  KIAppColorsData copyWith(
      {Color? actionablePrimary,
      Color? actionableSecondary,
      Color? warning,
      Color? success,
      Color? critical,
      Color? active,
      Color? textActive,
      Color? disabled,
      Color? accent,
      Color? hint,
      Color? surface,
      Color? overlay,
      Color? background,
      Color? textHeading,
      Color? textBodyPrimary,
      Color? textBodySecondary,
      Color? placeholder,
      Color? textDisabled,
      Color? textReversed,
      Color? separator,
      Color? kiBackground,
      Color? kiWhite,
      Color? kiCardText,
      Color? kiLightBackground,
      Color? kiMain,
      Color? kiTextHeading,
      Color? kiTextSubTitle,
      Color? kiTextBodyPrimary,
      Color? kiTextBodySecondary,
      Color? kiLightShape,
      Color? kiLightGreen,
      Color? kiLightBlueStroke}) {
    return KIAppColorsData(
        actionablePrimary: actionablePrimary ?? this.actionablePrimary,
        actionableSecondary: actionableSecondary ?? this.actionableSecondary,
        warning: warning ?? this.warning,
        success: success ?? this.success,
        critical: critical ?? this.critical,
        active: active ?? this.active,
        textActive: textActive ?? this.textActive,
        disabled: disabled ?? this.disabled,
        accent: accent ?? this.accent,
        hint: hint ?? this.hint,
        surface: surface ?? this.surface,
        overlay: overlay ?? this.overlay,
        background: background ?? this.background,
        textHeading: textHeading ?? this.textHeading,
        textBodyPrimary: textBodyPrimary ?? this.textBodyPrimary,
        textBodySecondary: textBodySecondary ?? this.textBodySecondary,
        placeholder: placeholder ?? this.placeholder,
        textDisabled: textDisabled ?? this.textDisabled,
        textReversed: textReversed ?? this.textReversed,
        separator: separator ?? this.separator,
        kiBackground: kiBackground ?? this.kiBackground,
        kiWhite: kiWhite??this.kiWhite,
        kiCardText: kiCardText??this.kiCardText,
        kiLightBackground: kiLightBackground??this.kiLightBackground,
        kiMain: kiMain ?? this.kiMain,
        kiTextHeading: kiTextHeading ?? this.kiTextHeading,
        kiTextBodyPrimary: kiTextBodyPrimary ?? this.kiTextBodyPrimary,
        kiTextBodySecondary: kiTextBodySecondary ?? this.kiTextBodySecondary,
        kiLightShape: kiLightShape ?? this.kiLightShape,
        kiLightGreen: kiLightGreen ?? this.kiLightGreen,
        kiLightBlueStroke: kiLightBlueStroke ?? this.kiLightBlueStroke,
        kiTextSubTitle: kiTextSubTitle ?? this.kiTextSubTitle,);
  }
}
