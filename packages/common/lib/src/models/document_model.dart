import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_lookups/kib_lookups.dart';

part 'document_model.g.dart';

enum DocumentStatus { newDocument, deleted, updated }

@JsonSerializable()
class Document {
  String? id;
  String? documentId;
  String? format;
  DocumentType? type;
  @JsonKey(ignore: true)
  DocumentStatus? status;
  String? url;
  @JsonKey(ignore: true)
  PlatformFile? file;

  Document({
    this.id,
    this.documentId,
    this.format,
    this.type,
    this.url,
  });

  factory Document.fromJson(json) => _$DocumentFromJson(json);
}
