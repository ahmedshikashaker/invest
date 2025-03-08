import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation.freezed.dart';
part 'validation.g.dart';

@Freezed(unionKey: 'type')
class Validation with _$Validation {
  @FreezedUnionValue('REGEX')
  const factory Validation.regex({
    required String value,
    required String errorMessage,
  }) = RegexValidation;

  @FreezedUnionValue('MIN_LENGTH')
  const factory Validation.minLength({
    required int value,
    required String errorMessage,
  }) = MinLengthValidation;

  @FreezedUnionValue('MIME_TYPE')
  const factory Validation.mimeType({
    required List<String> value,
    required String errorMessage,
  }) = MimeTypeValidation;

  @FreezedUnionValue('MAX_SIZE')
  const factory Validation.maxSize({
    required int value,
    required String errorMessage,
  }) = MaxSizeValidation;

  @FreezedUnionValue('REQUIRED')
  const factory Validation.required({
    required bool value,
    required String errorMessage,
  }) = RequiredValidation;

  factory Validation.fromJson(Map<String, dynamic> json) =>
      _$ValidationFromJson(json);
}