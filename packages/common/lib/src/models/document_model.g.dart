// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      id: json['id'] as String?,
      documentId: json['documentId'] as String?,
      format: json['format'] as String?,
      type: json['type'] == null
          ? null
          : DocumentType.fromJson(json['type'] as Map<String, dynamic>),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'format': instance.format,
      'type': instance.type,
      'url': instance.url,
    };
