import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress.freezed.dart';
part 'progress.g.dart';


@freezed
class Progress with _$Progress {
  factory Progress({
    required int percentage,
    required String label,
  }) = _Progress;

  factory Progress.fromJson(Map<String, dynamic> json) =>
      _$ProgressFromJson(json);
}