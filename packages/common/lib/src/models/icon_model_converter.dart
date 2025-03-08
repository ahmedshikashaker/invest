import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invest_common/common.dart';

class IconModelConverter
    extends JsonConverter<IconModel, Map<String, dynamic>> {
  const IconModelConverter();

  @override
  IconModel fromJson(Map<String, dynamic> json) {
    if (json['runtimeType'] == 'id') {
      return IconModelId.fromJson(json);
    } else if (json['runtimeType'] == 'base64') {
      return IconModelBase64.fromJson(json);
    } else {
      throw Exception('Unknown runtimeType: ${json['runtimeType']}');
    }
  }

  @override
  Map<String, dynamic> toJson(IconModel model) {
    final Map<String, dynamic> json = model.toJson();
    return {
      ...json,
      'runtimeType': model.map(
        // (_) => json,
        id: (_) => 'id',
        base64: (_) => 'base64',
      ),
    };
  }
}
