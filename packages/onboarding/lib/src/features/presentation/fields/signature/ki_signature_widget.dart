import 'dart:typed_data';

import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/actions/actions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';

/// Widget for displaying and capturing user signatures.
class KiSignatureWidget extends StatelessWidget {
  final SignatureField field;

  const KiSignatureWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();

    return ValueListenableBuilder<({dynamic answer, String? error})>(
      valueListenable: cubit.selectFieldState(field.id),
      builder: (context, value, child) {
        return KISignature(
          applyButton: context.boardingLocal.apply,
          clearButton: context.boardingLocal.clear,
          onClear: () {
            cubit.updateAnswer(field.id, null);
          },
          onApply: (value) => _handleSignatureApply(context, value),
        );
      },
    );
  }

  /// Handles when a signature is applied (saved).
  Future<void> _handleSignatureApply(
      BuildContext context, Uint8List? value) async {
    if (value == null) return;

    final cubit = context.read<SectionCubit>();

    // Handle file upload using our new simplified API
    await cubit.handleFileUpload(
        field: field, file: value, event: ActionEvent.onApply);
  }
}
