import 'package:freezed_annotation/freezed_annotation.dart';

part 'conditional.freezed.dart';
part 'conditional.g.dart';


@freezed
class Conditional with _$Conditional {
  factory Conditional({
    required LogicOperator logicalOperator,
    required List<Condition> conditions,
  }) = _Conditional;

  factory Conditional.fromJson(Map<String, dynamic> json) =>
      _$ConditionalFromJson(json);
}

@freezed
class Condition with _$Condition {
  factory Condition({
    required String targetFieldId,
    required Operator operator,
    required dynamic comparisonValue,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}

enum Operator {
  @JsonValue("EQUALS")
  equals,
  @JsonValue("NOT_EQUALS")
  notEquals,
  @JsonValue("LESS_THAN")
  lessThan,
  @JsonValue("GREATER_THAN")
  greaterThan,
  @JsonValue("CONTAINS")
  contains,
  @JsonValue("NOT_CONTAINS")
  notContains,
  @JsonValue("EXISTS")
  exists
}

enum LogicOperator {
  @JsonValue("AND")
  and,
  @JsonValue("OR")
  or,
}