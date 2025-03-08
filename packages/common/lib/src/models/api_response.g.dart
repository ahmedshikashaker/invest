// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIResponse<T> _$APIResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    APIResponse<T>(
      data: fromJsonT(json['data']),
      meta: json['meta'] == null
          ? null
          : PagingModel.fromJson(json['meta'] as Map<String, dynamic>),
    );
