import 'settings_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SettingsLocalizationsEn extends SettingsLocalizations {
  SettingsLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get notificationsLabelNotifications => 'Notifications';

  @override
  String get notificationsEmptyStateNoNotificationFoundMessage =>
      'We will notify you once we have something to share with you! ';

  @override
  String get notificationsEmptyStateNoNotificationFoundTitle =>
      'No notification yet';

  @override
  String get notificationsDetailsTitle => 'Notification details';
}
