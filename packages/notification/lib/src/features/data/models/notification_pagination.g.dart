// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPagination _$NotificationPaginationFromJson(
        Map<String, dynamic> json) =>
    NotificationPagination(
      pageNumber: (json['pageNumber'] as num?)?.toInt() ?? 1,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 10,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NotificationPaginationToJson(
        NotificationPagination instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
    };
