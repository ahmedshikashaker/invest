import 'package:common_dependencies/common_dependencies.dart';

part 'notification_response.g.dart';

@JsonSerializable(createToJson: false)
class NotificationModel {
  final String? id;
  final String? userId;
  final String? title;
  final String? description;
  @JsonKey(unknownEnumValue: KIBInvestNotificationTypes.unknown)
  final KIBInvestNotificationTypes? scope;
  Status? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  NotificationModel(
    this.id,
    this.userId,
    this.title,
    this.description,
    this.scope,
    this.status,
    this.createdAt,
    this.updatedAt,
  );

  bool get isRead => status == Status.read;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class NotificationsResponse {
  final List<NotificationModel>? data;
  final int? total;
  final int? pageNumber;
  final int? pageSize;
  final int? totalPages;
  final int? totalUnread;

  NotificationsResponse({
    this.data,
    this.total,
    this.pageNumber,
    this.pageSize,
    this.totalPages,
    this.totalUnread,
  });

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseFromJson(json);
}

enum Status {
  @JsonValue("UNREAD")
  unread,
  @JsonValue("READ")
  read,
}

enum KIBInvestNotificationTypes {
  @JsonValue("OTP")
  otp,
  @JsonValue("kib_investPAYMENT_REMINDER")
  KIBInvestPaymentReminder,
  @JsonValue("kib_investCIVIL_ID_EXPIRY")
  KIBInvestCivilIdExpiry,
  @JsonValue("kib_investTRANSACTION_STATUS")
  KIBInvestTransactionStatus,
  @JsonValue("kib_investBENEFICIARY_ADDED")
  KIBInvestBeneficiaryAdded,
  @JsonValue("kib_investBENEFICIARY_BLOCKED")
  KIBInvestBeneficiaryBlocked,
  @JsonValue("kib_investBENEFICIARY_ACTIVATED")
  KIBInvestBeneficiaryActivated,
  @JsonValue("kib_investPAYMENT_REMINDER_CREATED")
  KIBInvestPaymentReminderCreated,
  @JsonValue("kib_investPAYMENT_REMINDER_DELETED")
  KIBInvestPaymentReminderDeleted,
  @JsonValue("kib_investACCOUNT_CREATED")
  KIBInvestAccountCreated,
  @JsonValue("kib_investACCOUNT_LOCKED")
  KIBInvestAccountLocked,
  @JsonValue("kib_investPASSWORD_CHANGED")
  KIBInvestPasswordChanged,
  unknown,
}
