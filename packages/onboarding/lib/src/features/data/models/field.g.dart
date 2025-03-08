// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextFieldImpl _$$TextFieldImplFromJson(Map<String, dynamic> json) =>
    _$TextFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      placeholder: json['placeholder'] as String?,
      required: json['required'] as bool? ?? false,
      value: json['value'] as String?,
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TextFieldImplToJson(_$TextFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'placeholder': instance.placeholder,
      'required': instance.required,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$FileFieldImpl _$$FileFieldImplFromJson(Map<String, dynamic> json) =>
    _$FileFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] == null
          ? null
          : IconModelId.fromJson(json['icon'] as Map<String, dynamic>),
      required: json['required'] as bool? ?? false,
      value: json['value'] == null
          ? null
          : FileValue.fromJson(json['value'] as Map<String, dynamic>),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FileFieldImplToJson(_$FileFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'required': instance.required,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$AmountFieldImpl _$$AmountFieldImplFromJson(Map<String, dynamic> json) =>
    _$AmountFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      placeholder: json['placeholder'] as String?,
      suffix: json['suffix'] as String?,
      required: json['required'] as bool? ?? false,
      value: (json['value'] as num?)?.toInt(),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AmountFieldImplToJson(_$AmountFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'placeholder': instance.placeholder,
      'suffix': instance.suffix,
      'required': instance.required,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$SelectionFieldImpl _$$SelectionFieldImplFromJson(Map<String, dynamic> json) =>
    _$SelectionFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      numberOfColumns: (json['numberOfColumns'] as num?)?.toInt() ?? 1,
      lookupId: json['lookupId'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => LookupItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      required: json['required'] as bool? ?? false,
      value:
          (json['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SelectionFieldImplToJson(
        _$SelectionFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'numberOfColumns': instance.numberOfColumns,
      'lookupId': instance.lookupId,
      'options': instance.options,
      'required': instance.required,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$DropdownFieldImpl _$$DropdownFieldImplFromJson(Map<String, dynamic> json) =>
    _$DropdownFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      placeholder: json['placeholder'] as String?,
      required: json['required'] as bool? ?? false,
      lookupId: json['lookupId'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => LookupItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] as String?,
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DropdownFieldImplToJson(_$DropdownFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'placeholder': instance.placeholder,
      'required': instance.required,
      'lookupId': instance.lookupId,
      'options': instance.options,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$CheckboxFieldImpl _$$CheckboxFieldImplFromJson(Map<String, dynamic> json) =>
    _$CheckboxFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      placeholder: json['placeholder'] as String?,
      required: json['required'] as bool? ?? false,
      value: json['value'] as bool?,
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CheckboxFieldImplToJson(_$CheckboxFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'placeholder': instance.placeholder,
      'required': instance.required,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$DatePickerFieldImpl _$$DatePickerFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$DatePickerFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      required: json['required'] as bool? ?? false,
      placeholder: json['placeholder'] as String?,
      suffix: json['suffix'] as String?,
      value: json['value'] == null
          ? null
          : DateTime.parse(json['value'] as String),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DatePickerFieldImplToJson(
        _$DatePickerFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'required': instance.required,
      'placeholder': instance.placeholder,
      'suffix': instance.suffix,
      'value': instance.value?.toIso8601String(),
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$LinkFieldImpl _$$LinkFieldImplFromJson(Map<String, dynamic> json) =>
    _$LinkFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      required: json['required'] as bool? ?? false,
      placeholder: json['placeholder'] as String?,
      suffix: json['suffix'] as String?,
      value: json['value'] as String?,
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LinkFieldImplToJson(_$LinkFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'required': instance.required,
      'placeholder': instance.placeholder,
      'suffix': instance.suffix,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$RadioFieldImpl _$$RadioFieldImplFromJson(Map<String, dynamic> json) =>
    _$RadioFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      required: json['required'] as bool? ?? false,
      numberOfColumns: (json['numberOfColumns'] as num?)?.toInt() ?? 1,
      lookupId: json['lookupId'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => LookupItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] as String?,
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RadioFieldImplToJson(_$RadioFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'required': instance.required,
      'numberOfColumns': instance.numberOfColumns,
      'lookupId': instance.lookupId,
      'options': instance.options,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$SignatureFieldImpl _$$SignatureFieldImplFromJson(Map<String, dynamic> json) =>
    _$SignatureFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      required: json['required'] as bool? ?? false,
      value: json['value'] == null
          ? null
          : FileValue.fromJson(json['value'] as Map<String, dynamic>),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SignatureFieldImplToJson(
        _$SignatureFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'required': instance.required,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$GroupFieldImpl _$$GroupFieldImplFromJson(Map<String, dynamic> json) =>
    _$GroupFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      required: json['required'] as bool? ?? false,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupFieldImplToJson(_$GroupFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'required': instance.required,
      'children': instance.children,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$HintFieldImpl _$$HintFieldImplFromJson(Map<String, dynamic> json) =>
    _$HintFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      level: json['level'] as String?,
      placeholder: json['placeholder'] as String?,
      required: json['required'] as bool? ?? false,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$HintFieldImplToJson(_$HintFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'level': instance.level,
      'placeholder': instance.placeholder,
      'required': instance.required,
      'children': instance.children,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$RadioGroupFieldImpl _$$RadioGroupFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$RadioGroupFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      required: json['required'] as bool? ?? false,
      numberOfColumns: (json['numberOfColumns'] as num?)?.toInt() ?? 1,
      lookupId: json['lookupId'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => LookupItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] as String?,
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RadioGroupFieldImplToJson(
        _$RadioGroupFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'required': instance.required,
      'numberOfColumns': instance.numberOfColumns,
      'lookupId': instance.lookupId,
      'options': instance.options,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$CheckBoxGroupFieldImpl _$$CheckBoxGroupFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckBoxGroupFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      required: json['required'] as bool? ?? false,
      numberOfColumns: (json['numberOfColumns'] as num?)?.toInt() ?? 1,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => LookupItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      value:
          (json['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CheckBoxGroupFieldImplToJson(
        _$CheckBoxGroupFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'required': instance.required,
      'numberOfColumns': instance.numberOfColumns,
      'options': instance.options,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$RepeaterGroupFieldImpl _$$RepeaterGroupFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$RepeaterGroupFieldImpl(
      id: json['id'] as String,
      label: json['label'] as String?,
      description: json['description'] as String?,
      templateTitle: json['templateTitle'] as String?,
      addButtonLabel: json['addButtonLabel'] as String?,
      template: (json['template'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      fieldsGroups:
          convertRepeaterValue(parseRepeaterValue(json, 'fieldsGroups')),
      value: json['value'] as List<dynamic>?,
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => Validation.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditional: json['conditional'] == null
          ? null
          : Conditional.fromJson(json['conditional'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RepeaterGroupFieldImplToJson(
        _$RepeaterGroupFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'templateTitle': instance.templateTitle,
      'addButtonLabel': instance.addButtonLabel,
      'template': instance.template,
      'fieldsGroups': instance.fieldsGroups,
      'value': instance.value,
      'validations': instance.validations,
      'conditional': instance.conditional,
      'actions': instance.actions,
      'type': instance.$type,
    };

_$FileValueImpl _$$FileValueImplFromJson(Map<String, dynamic> json) =>
    _$FileValueImpl(
      documentUuid: documentIdFromJson(json, 'documentUuid') as String,
      name: json['name'] as String,
      mimeType: json['mimeType'] as String,
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FileValueImplToJson(_$FileValueImpl instance) =>
    <String, dynamic>{
      'documentUuid': instance.documentUuid,
      'name': instance.name,
      'mimeType': instance.mimeType,
      'size': instance.size,
    };
