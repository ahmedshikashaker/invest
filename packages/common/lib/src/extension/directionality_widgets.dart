import 'package:kib_design_system/kib_design_system.dart';

class RTLDirectionality extends StatelessWidget {
  final Widget child;

  const RTLDirectionality({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: child);
  }
}

class LTRDirectionality extends StatelessWidget {
  final Widget child;

  const LTRDirectionality({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.ltr, child: child);
  }
}
