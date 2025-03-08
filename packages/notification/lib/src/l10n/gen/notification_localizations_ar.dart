import 'notification_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class NotificationLocalizationsAr extends NotificationLocalizations {
  NotificationLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get notificationsLabelNotifications => 'الإشعارات';

  @override
  String get notificationsEmptyStateNoNotificationFoundMessage =>
      'سنقوم بإعلامك عندما يكون لدينا شيء لنشاركه معك!';

  @override
  String get notificationsEmptyStateNoNotificationFoundTitle =>
      'لا يوجد  إشعار حتى الآن';

  @override
  String get notificationsDetailsTitle => ' تفاصيل الإشعار';
}
