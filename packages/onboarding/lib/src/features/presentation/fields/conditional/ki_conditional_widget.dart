import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';

class ConditionalWidget extends StatelessWidget {
  final Field? field;
  final Widget? child;

  const ConditionalWidget({
    super.key,
    this.field,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    // Handle empty/null conditions - always visible
    if (field?.conditional == null || field?.conditional?.conditions.isEmpty == true) {
      return child ?? const SizedBox.shrink();
    }

    final cubit = context.read<SectionCubit>();
    return ValueListenableBuilder<Map<String, dynamic>>(
      valueListenable: cubit.selectAnswersByIds(
          field?.conditional?.conditions.map((condition) => condition.targetFieldId).toList() ??
              []),
      builder: (context, value, child) {
        return field?.isVisible(value) == true && child != null
            ? child
            : const SizedBox.shrink();
      },
      child: child,
    );
  }
}
