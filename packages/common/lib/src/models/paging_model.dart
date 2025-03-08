import 'package:common_dependencies/common_dependencies.dart';

part 'paging_model.g.dart';

@JsonSerializable()
class PagingModel {
  const PagingModel(
      {this.page = 1,
      this.perPage = 10,
      this.pageCount = 1,
      this.itemCount,
      this.hasNextPage = false,
      this.hasPreviousPage = false})
      : assert(page > 0);

  final int page;
  @JsonKey(name: "size")
  final int perPage;
  final int? pageCount;
  @JsonKey(name: "itemCount")
  final int? itemCount;
  final bool? hasNextPage;
  final bool? hasPreviousPage;

  factory PagingModel.fromJson(Map<String, dynamic> json) =>
      _$PagingModelFromJson(json);

  PagingModel copyWith(
      {int? page,
      int? perPage,
      int? pageCount,
      bool? hasNextPage,
      bool? hasPreviousPage}) {
    return PagingModel(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      pageCount: pageCount ?? this.pageCount,
      hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }
}
