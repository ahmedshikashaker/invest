import 'package:common_dependencies/common_dependencies.dart';

part 'notification_pagination.g.dart';

@JsonSerializable()
class NotificationPagination {
  const NotificationPagination({
    this.pageNumber = 1,
    this.pageSize = 10,
    this.totalPages,
  });

  final int pageNumber;

  final int pageSize;

  final int? totalPages;

  bool get canPaginate => pageNumber < (totalPages ?? 1);

  NotificationPagination copyWith({
    int? pageNumber,
    int? pageSize,
    int? totalPages,
  }) {
    return NotificationPagination(
      pageNumber: pageNumber ?? this.pageNumber,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  factory NotificationPagination.fromJson(Map<String, dynamic> json) =>
      _$NotificationPaginationFromJson(json);
}
