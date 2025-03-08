import 'package:kib_design_system/kib_design_system.dart';

class ScrollNotificationListener extends StatelessWidget {
  final void Function()? onReachLimit;
  final double maxScrollLimit;
  final num? totalPageSize;
  final bool? hasMorePage;
  final num? itemLength;
  final Widget child;

  const ScrollNotificationListener({
    super.key,
    this.itemLength,
    this.hasMorePage,
    this.onReachLimit,
    required this.child,
    this.totalPageSize = 20,
    this.maxScrollLimit = 100,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _onNotification,
      child: child,
    );
  }

  bool _onNotification(ScrollNotification notification) {
    if (isExceedLimit(notification.metrics) && limitPageSize) {
      onReachLimit?.call();
    }

    return true;
  }

  bool isExceedLimit(ScrollMetrics metrics) =>
      metrics.maxScrollExtent - metrics.pixels <= maxScrollLimit;

  bool get limitPageSize {
    if (totalPageSize != null && itemLength != null) {
      return totalPageSize! > itemLength!;
    } else {
      return hasMorePage ?? true;
    }
  }
}
