import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:signature/signature.dart';

class SignatureWidget extends StatelessWidget {
  const SignatureWidget({
    Key? key,
    this.height,
    this.border,
    required this.controller,
  }) : super(key: key);

  final double? height;
  final Border? border;
  final SignatureController controller;

  @override
  Widget build(BuildContext context) {
    final double effectiveHeight =
        height ?? context.signatureTheme.properties.height;

    final Border effectiveBorder =
        border ?? context.signatureTheme.properties.border;

    return AppContainer(
      decoration: BoxDecoration(
        border: effectiveBorder
      ),
      child: Signature(
        key: const Key('signature'),
        controller: controller,
        height: effectiveHeight,
        backgroundColor: controller.exportBackgroundColor!,
      ),
    );
  }
}
