// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      json['id'] as String?,
      json['userId'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      $enumDecodeNullable(_$KIBInvestNotificationTypesEnumMap, json['scope'],
          unknownValue: KIBInvestNotificationTypes.unknown),
      $enumDecodeNullable(_$StatusEnumMap, json['status']),
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

const _$KIBInvestNotificationTypesEnumMap = {
  KIBInvestNotificationTypes.otp: 'OTP',
  KIBInvestNotificationTypes.KIBInvestPaymentReminder:
      'kib_investPAYMENT_REMINDER',
  KIBInvestNotificationTypes.KIBInvestCivilIdExpiry:
      'kib_investCIVIL_ID_EXPIRY',
  KIBInvestNotificationTypes.KIBInvestTransactionStatus:
      'kib_investTRANSACTION_STATUS',
  KIBInvestNotificationTypes.KIBInvestBeneficiaryAdded:
      'kib_investBENEFICIARY_ADDED',
  KIBInvestNotificationTypes.KIBInvestBeneficiaryBlocked:
      'kib_investBENEFICIARY_BLOCKED',
  KIBInvestNotificationTypes.KIBInvestBeneficiaryActivated:
      'kib_investBENEFICIARY_ACTIVATED',
  KIBInvestNotificationTypes.KIBInvestPaymentReminderCreated:
      'kib_investPAYMENT_REMINDER_CREATED',
  KIBInvestNotificationTypes.KIBInvestPaymentReminderDeleted:
      'kib_investPAYMENT_REMINDER_DELETED',
  KIBInvestNotificationTypes.KIBInvestAccountCreated:
      'kib_investACCOUNT_CREATED',
  KIBInvestNotificationTypes.KIBInvestAccountLocked: 'kib_investACCOUNT_LOCKED',
  KIBInvestNotificationTypes.KIBInvestPasswordChanged:
      'kib_investPASSWORD_CHANGED',
  KIBInvestNotificationTypes.unknown: 'unknown',
};

const _$StatusEnumMap = {
  Status.unread: 'UNREAD',
  Status.read: 'READ',
};

NotificationsResponse _$NotificationsResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalUnread: (json['totalUnread'] as num?)?.toInt(),
    );
