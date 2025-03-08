// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionalImpl _$$ConditionalImplFromJson(Map<String, dynamic> json) =>
    _$ConditionalImpl(
      logicalOperator:
          $enumDecode(_$LogicOperatorEnumMap, json['logicalOperator']),
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConditionalImplToJson(_$ConditionalImpl instance) =>
    <String, dynamic>{
      'logicalOperator': _$LogicOperatorEnumMap[instance.logicalOperator]!,
      'conditions': instance.conditions,
    };

const _$LogicOperatorEnumMap = {
  LogicOperator.and: 'AND',
  LogicOperator.or: 'OR',
};

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      targetFieldId: json['targetFieldId'] as String,
      operator: $enumDecode(_$OperatorEnumMap, json['operator']),
      comparisonValue: json['comparisonValue'],
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'targetFieldId': instance.targetFieldId,
      'operator': _$OperatorEnumMap[instance.operator]!,
      'comparisonValue': instance.comparisonValue,
    };

const _$OperatorEnumMap = {
  Operator.equals: 'EQUALS',
  Operator.notEquals: 'NOT_EQUALS',
  Operator.lessThan: 'LESS_THAN',
  Operator.greaterThan: 'GREATER_THAN',
  Operator.contains: 'CONTAINS',
  Operator.notContains: 'NOT_CONTAINS',
  Operator.exists: 'EXISTS',
};
