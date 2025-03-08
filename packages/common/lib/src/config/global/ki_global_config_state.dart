part of 'ki_global_config_cubit.dart';

@freezed
class KiGlobalConfigState with _$KiGlobalConfigState {
  const factory KiGlobalConfigState.initial() = _Initial;
  const factory KiGlobalConfigState.loaded({
     ThemeMode? themeMode,
     Locale? locale,
     bool? firstEnter,
  }) = _Loaded;
}
