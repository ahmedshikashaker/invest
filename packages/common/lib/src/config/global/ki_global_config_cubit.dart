import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';

part 'ki_global_config_state.dart';

part 'ki_global_config_cubit.freezed.dart';

@LazySingleton()
class KiGlobalConfigCubit extends Cubit<KiGlobalConfigState> {
  final SharedPreferences _prefs;
  static const String _themeKey = 'theme_mode';
  static const String _localeKey = 'locale';
  static const String _firstEnterKey = 'first_enter';
  Locale? _locale;
  ThemeMode? _themeMode;
  bool? _firstEnter;

  KiGlobalConfigCubit(this._prefs)
      : super(const KiGlobalConfigState.initial()) {
    _loadSettings();
  }

  void _loadSettings() {
    _themeMode = _loadThemeMode();
    _locale = _loadLocale();
    _firstEnter = _loadFirstEnter();

    emit(KiGlobalConfigState.loaded(
      themeMode: _themeMode,
      locale: _locale,
      firstEnter: _firstEnter,
    ));
  }

  ThemeMode _loadThemeMode() {
    final value = _prefs.getString(_themeKey);
    return ThemeMode.values.firstWhere(
      (mode) => mode.toString() == value,
      orElse: () => ThemeMode.system,
    );
  }

  Locale _loadLocale() {
    final value = _prefs.getString(_localeKey);
    return Locale(value ?? 'en');
  }

  bool _loadFirstEnter() {
    final value = _prefs.getBool(_firstEnterKey);
    return value ?? true;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    await _prefs.setString(_themeKey, mode.toString());
    _themeMode = mode;
    emit(KiGlobalConfigState.loaded(themeMode: mode));
  }

  Future<void> setLocale(String languageCode) async {
    await _prefs.setString(_localeKey, languageCode);
    _locale = Locale(languageCode);
    emit(KiGlobalConfigState.loaded(locale: Locale(languageCode)));
  }

  Future<void> setFirstEnter(bool isFirst) async {
    await _prefs.setBool(_firstEnterKey, isFirst);
    _firstEnter = isFirst;
    emit(KiGlobalConfigState.loaded(firstEnter: isFirst));
  }

  Locale get locale => _locale ?? const Locale('en');

  ThemeMode get themeMode => _themeMode ?? ThemeMode.system;

  bool get firstEnter => _firstEnter ?? true;
}
