// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingModel _$PagingModelFromJson(Map<String, dynamic> json) => PagingModel(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['size'] as num?)?.toInt() ?? 10,
      pageCount: (json['pageCount'] as num?)?.toInt() ?? 1,
      itemCount: (json['itemCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool? ?? false,
      hasPreviousPage: json['hasPreviousPage'] as bool? ?? false,
    );

Map<String, dynamic> _$PagingModelToJson(PagingModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.perPage,
      'pageCount': instance.pageCount,
      'itemCount': instance.itemCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
    };
